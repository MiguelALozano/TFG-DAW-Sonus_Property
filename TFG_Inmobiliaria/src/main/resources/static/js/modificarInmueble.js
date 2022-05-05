

//Buscar Inmueble
botonBuscarInmueble.addEventListener('click', function(event){
	event.preventDefault();
	
	console.log('entro al buscar inmueble');
	
	fetch(`http://localhost:4000/rest/inmobiliaria/buscarInmueble/${idInmueble.value}`, {
		method:'GET',
		headers: {'Content-type': 'application/json'}
		})
		.then(response =>{
			if(response.status == 200){
				//alert('El inmueble existe');
				msgInmuebleNoExiste.style.display='none';
				//reseteo los checkbox de resultados anteriores
				ascensorSi.checked = false;
				ascensorNo.checked = false;
				return response.json();
			}else{
				//alert(`No existe ningún inmueble con ese id ${idInmueble.value}`)
				msgInmuebleNoExiste.style.display='block';
				//borro los posibles resultados anteriores que estuvieran en el formulario
				formModificar.reset();
				//perfilUser.checked = false;
				//perfilAdmon.checked = false;
				throw new Error(response.status);
			}	
		})
		.then(UsuarioJson => {
			console.log(UsuarioJson);
			ciudad.value = UsuarioJson.ciudad.idCiudad;
			fechaAlta.value = UsuarioJson.fechaAlta;
			if(UsuarioJson.ascensor == 1)
				ascensorSi.checked = true;
			else
				ascensorNo.checked = true;
			baños.value = UsuarioJson.baños;	
			estado.value = UsuarioJson.estado;
			imagen.value = UsuarioJson.imagen;
			novedad.value = UsuarioJson.novedad;
			numHabitaciones.value = UsuarioJson.numHabitaciones;
			planta.value = UsuarioJson.planta;
			precio.value = UsuarioJson.precio;
			tamanio.value = UsuarioJson.tamanio;
			terraza.value = UsuarioJson.terraza;
			tipoInmueble.value = UsuarioJson.tipo.idTipo;
			
		})
		.catch(error => {
			console.error("Error: ", error.message);
		});
});


//Modificar Inmueble
botonModificarInmueble.addEventListener('click', function(event){
	event.preventDefault();
	let tieneAscensor = false;
	if(ascensorSi.checked == true)
		tieneAscensor = 1;
	else if(ascensorNo.checked == true)
		tieneAscensor = 0;
	console.log('valor de ciudad en modificar ' + ciudad.value);
	fetch('http://localhost:4000/rest/inmobiliaria/modificarInmueble', {
		method: 'PUT',
		body: JSON.stringify({
			idInmueble : idInmueble.value,
			ciudad :{
				idCiudad: ciudad.value,
			},
			fechaAlta : fechaAlta.value,
			ascensor : tieneAscensor,
			baños : baños.value,
			estado : estado.value,
			imagen: imagen.value,
			novedad : novedad.value,
			numHabitaciones : numHabitaciones.value,
			planta : planta.value,
			precio : precio.value,
			tamanio : tamanio.value,
			terraza : terraza.value,
			tipo : {
				idTipo: tipoInmueble.value,
			}
		}),
		headers: {'Content-type': 'application/json'}
	})
	alert('Inmueble modificado');
});

//Borrar Inmueble
botonBorrarInmueble.addEventListener('click', function(event){
	event.preventDefault();
	console.log('entro a borrar inmueble');
	fetch(`http://localhost:4000/rest/inmobiliaria/borrarInmueble/${idInmueble.value}`, {
		method:'DELETE',
		headers: {'Content-type': 'application/json'}
	})
	.then(response =>{
		if(response.status == 200){
			alert('Inmueble Borrado');
			formModificar.reset();
		}else {
			alert('No existe el inmueble');
		}
		
	})
});
