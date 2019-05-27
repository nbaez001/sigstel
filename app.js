var io= require('socket.io').listen(3000);

io.sockets.on('connection', arranque);

function arranque(socket)
{
	socket.on('enviar', regresar);
}

function regresar(data)
{
	io.sockets.emit('respPanel',data);
}
