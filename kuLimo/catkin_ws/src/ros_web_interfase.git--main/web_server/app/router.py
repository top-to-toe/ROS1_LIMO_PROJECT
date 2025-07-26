
import socketio

sio_app = socketio.AsyncServer(async_mode="asgi", cors_allowed_origins="*")

@sio_app.event
async def connect(sid, environ):
    print("Client connected:", sid)

# 각 센서 데이터는 추가 필드가 포함되어도 그대로 중계됩니다.
@sio_app.on("pose")
async def handle_pose(sid, data):
    await sio_app.emit("pose_update", data)

@sio_app.on("velocity")
async def handle_velocity(sid, data):
    await sio_app.emit("velocity_update", data)

@sio_app.on("battery")
async def handle_battery(sid, data):
    await sio_app.emit("battery_update", data)

@sio_app.on("camera")
async def handle_camera(sid, data):
    await sio_app.emit("camera_update", data)

@sio_app.on("path")
async def handle_path(sid, data):
    await sio_app.emit("path_update", data)

@sio_app.on("scan")
async def handle_scan(sid, data):
    await sio_app.emit("scan_update", data)

@sio_app.on("cmd")
async def handle_cmd(sid, data):
    print(f"[DEBUG] cmd from web: {data}")
    await sio_app.emit("cmd", data)
