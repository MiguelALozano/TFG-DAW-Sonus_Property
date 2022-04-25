let perfilesUser = [];


//Buscar Usuario
botonBuscarUsuario.addEventListener('click', function(event){
	event.preventDefault();
	console.log('entro al buscar usuario');
	
	fetch(`http://localhost:4000/rest/inmobiliaria/buscarUsuario/${username.value}`, {
		method:'GET',
		headers: {'Content-type': 'application/json'}
		})
		.then(response =>{
			if(response.status == 200){
				alert('El usuario existe');
				perfilUser.checked = false;
				perfilAdmon.checked = false;
				return response.json();
			}else{
				alert(`No existe ningún usuario con ese username ${username.value}`)
				//borro los posibles resultados anteriores que estuvieran en el formulario
				formModificar.reset();
				perfilUser.checked = false;
				perfilAdmon.checked = false;
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
			
			for(ele of UsuarioJson.perfiles){
				console.log(ele.descripcion);
				if (ele.descripcion == 'ROL_USER')
					perfilUser.checked = true;
				else if (ele.descripcion == 'ROL_ADMON')
					perfilAdmon.checked = true;
			}
				
			
		})
		.catch(error => {
			console.error("Error: ", error.message);
		});
});


//Modificar Usuario
botonModificarUsuario.addEventListener('click', function(event){
	event.preventDefault();
	//vacio array de perfilesUser
	perfilesUser = [];
	//console.log('perfiles al inicio' + perfilesUser);
	if(perfilUser.checked == true ){
		console.log('checkbox de usuario esta seleccionado');
		perfilesUser.push({"idPerfil":1, "descripcion":"ROL_USER"});
		console.log(perfilesUser);
	}
	if(perfilAdmon.checked == true){
		console.log('checkbox de admon esta seleccionado');
		perfilesUser.push({"idPerfil":2, "descripcion":"ROL_ADMON"});
		console.log(perfilesUser);
	}
	
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
			perfiles: perfilesUser,
		}),
		headers: {'Content-type': 'application/json'}
	})
	alert('Usuario modificado');
});

//Borrar Usuario
botonBorrarUsuario.addEventListener('click', function(event){
	event.preventDefault();
	fetch(`http://localhost:4000/rest/inmobiliaria/borrarUsuario/${username.value}`, {
		method:'DELETE',
		headers: {'Content-type': 'application/json'}
	})
	.then(response =>{
		if(response.status == 200){
			alert('Usuario Borrado');
			formModificar.reset();
		}else {
			alert('No existe el usuario');
		}
		
	})
});

