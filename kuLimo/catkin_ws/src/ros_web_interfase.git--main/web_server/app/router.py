
import socketio

sio_app = socketio.AsyncServer(async_mode="asgi", cors_allowed_origins="*")

@sio_app.event
async def connect(sid, environ):
    print("Client connected:", sid)

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
