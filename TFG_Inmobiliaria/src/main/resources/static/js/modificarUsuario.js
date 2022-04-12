
botonBuscarUsuario.addEventListener('click', function(event){
	event.preventDefault();
	console.log('entro al evento');
	fetch(`http://localhost:4000/rest/inmobiliaria/buscarUsuario/${username.value}`, {
		method:'GET',
		headers: {'Content-type': 'application/json'}
		})
		.then(response =>{
			if(response.status == 200){
				alert('El usuario existe');
				return response.json();
			}else{
				alert(`No existe ningún usuario con ese username ${username.value}`)
				throw new Error(response.status);
			}	
		})
		.then(UsuarioJson => {
			username.value = UsuarioJson.username;
			nombre.value = UsuarioJson.nombre;
			apellido.value = UsuarioJson.apellido;
			direccion.value = UsuarioJson.direccion;
			email.value = UsuarioJson.email;	
			fechaAlta.value = UsuarioJson.fechaAlta;
			password.value = UsuarioJson.password;
			enabled.value = UsuarioJson.enabled;
			//revisar no consigo sacar los perfiles
			//console.log("perfiles " + UsuarioJson.perfiles)
			//console.log(UsuarioJson.perfiles.descripcion);
			for(ele of UsuarioJson.perfiles)
				console.log(ele.descripcion);
		})
		.catch(error => {
			console.error("Error: ", error.message);
		});
});


botonModificarUsuario.addEventListener('click', function(event){
	event.preventDefault();
	fetch('http://localhost:4000/rest/inmobiliaria/modificarUsuario', {
		method: 'PUT',
		body: JSON.stringify({
			username : username.value,
			nombre : nombre.value,
			apellido : apellido.value,
			direccion : direccion.value,
			email : email.value,	
			fechaAlta : fechaAlta.value,
			password : password.value,
			enabled : enabled.value,
			//revisar perfiles
			//perfiles : perfiles.value
			
		}),
		headers: {'Content-type': 'application/json'}
	})
	alert('Usuario modificado');
});

