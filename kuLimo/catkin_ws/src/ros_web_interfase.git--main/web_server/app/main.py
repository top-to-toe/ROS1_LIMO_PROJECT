from fastapi import FastAPI
from fastapi.responses import FileResponse  # FileResponse를 사용하기 위해 임포트
from fastapi.staticfiles import StaticFiles
from fastapi.middleware.cors import CORSMiddleware
import socketio

# app/router.py에서 정의한 sio_app 객체를 가져옵니다.
from app.router import sio_app

# 1. FastAPI 앱 인스턴스의 변수명을 'fastapi_app'으로 변경하여 혼동을 방지합니다.
fastapi_app = FastAPI()

# 2. Socket.IO 서버(sio_app)와 FastAPI 앱(fastapi_app)을 통합하여
#    uvicorn이 실행할 최종 'app' 객체를 생성합니다. 이것이 핵심입니다.
app = socketio.ASGIApp(
    socketio_server=sio_app,
    other_asgi_app=fastapi_app
)

# --- 아래의 모든 설정은 순수 FastAPI 인스턴스인 'fastapi_app'에 적용합니다 ---

# 3. 정적 파일 경로를 올바르게 설정합니다.
# uvicorn 실행 위치(web_server)를 기준으로 'static' 폴더를 찾습니다.
fastapi_app.mount("/static", StaticFiles(directory="static"), name="static")

# 4. 루트 경로('/') 요청 시 HTML 파일을 안정적으로 반환하도록 수정합니다.
# open().read() 대신 FileResponse를 사용하는 것이 표준적인 방법입니다.
@fastapi_app.get("/")
async def read_index():
    return FileResponse("templates/index.html")

# 5. CORS 미들웨어를 FastAPI 인스턴스에 적용합니다.
# (참고: sio_app의 cors_allowed_origins는 WebSocket 연결용,
# 이 미들웨어는 / 같은 HTTP API 엔드포인트용입니다.)
fastapi_app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)


# uvicorn app.main:app --host 0.0.0.0 --port 8000
