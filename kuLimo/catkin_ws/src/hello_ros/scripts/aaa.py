#!/usr/bin/env python3
import pandas as pd
import matplotlib.pyplot as plt
import os

def visualize_traffic_log(csv_file):
    # ✅ CSV 로드
    if not os.path.exists(csv_file):
        print(f"❌ CSV 파일을 찾을 수 없습니다: {csv_file}")
        return

    df = pd.read_csv(csv_file)
    print(f"✅ {len(df)}개의 프레임 데이터를 불러왔습니다.")

    # ✅ timestamp를 시간으로 변환
    df["timestamp"] = pd.to_datetime(df["timestamp"])

    # ✅ 클래스 목록 추출
    frame_classes = [col for col in df.columns if col.startswith("frame_")]
    total_classes = [col for col in df.columns if col.startswith("total_")]

    # ✅ 1. 시간대별 감지량 추세 (프레임 감지 합계)
    df["frame_sum"] = df[frame_classes].sum(axis=1)

    plt.figure(figsize=(12, 5))
    plt.plot(df["timestamp"], df["frame_sum"], marker="o", linestyle="-")
    plt.title("시간대별 프레임 감지량")
    plt.xlabel("시간")
    plt.ylabel("프레임당 감지 수")
    plt.xticks(rotation=30)
    plt.grid(True)
    plt.tight_layout()
    plt.show()

    # ✅ 2. 클래스별 비율 파이차트 (누적 감지 수)
    last_row = df.iloc[-1]
    total_counts = [last_row[col] for col in total_classes]
    labels = [col.replace("total_", "") for col in total_classes]

    plt.figure(figsize=(6, 6))
    plt.pie(total_counts, labels=labels, autopct="%1.1f%%", startangle=140)
    plt.title("클래스별 감지 비율")
    plt.tight_layout()
    plt.show()

    # ✅ 3. 프레임당 감지 수 히스토그램
    plt.figure(figsize=(8, 5))
    plt.hist(df["frame_sum"], bins=20, edgecolor="black")
    plt.title("프레임당 감지 수 분포")
    plt.xlabel("프레임당 감지 수")
    plt.ylabel("빈도")
    plt.grid(True)
    plt.tight_layout()
    plt.show()

    # ✅ 4. 클래스별 시간 추세
    plt.figure(figsize=(12, 6))
    for cls in frame_classes:
        plt.plot(df["timestamp"], df[cls], label=cls.replace("frame_", ""))
    plt.title("시간대별 클래스별 감지 추세")
    plt.xlabel("시간")
    plt.ylabel("프레임별 감지 수")
    plt.legend()
    plt.xticks(rotation=30)
    plt.grid(True)
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    csv_path = "traffic_log_2025-07-19.csv"
    visualize_traffic_log(csv_path)
