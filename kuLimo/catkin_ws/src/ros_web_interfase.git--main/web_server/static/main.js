const socket = io();

socket.on('pose_update', data => {
    document.getElementById('pose').innerText =
        `x: ${data.x.toFixed(2)}, y: ${data.y.toFixed(2)}, θ: ${data.theta}`;
});

socket.on('velocity_update', data => {
    document.getElementById('velocity').innerText =
        `v: ${data.linear.toFixed(2)}, ω: ${data.angular.toFixed(2)}`;
});

socket.on('battery_update', data => {
    document.getElementById('battery').innerText =
        `Battery: ${Math.round(data.percentage * 100)}%`;
});

socket.on('camera_update', data => {
    document.getElementById('camera').src = "data:image/jpeg;base64," + data.image;
});
