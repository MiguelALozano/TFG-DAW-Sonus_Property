

//Buscar Inmueble
botonBuscarInmueble.addEventListener('click', function(event){
	event.preventDefault();
	
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
		.then(InmuebleJson => {
			ciudad.value = InmuebleJson.ciudad.idCiudad;
			fechaAlta.value = InmuebleJson.fechaAlta;
			if(InmuebleJson.ascensor == 1)
				ascensorSi.checked = true;
			else
				ascensorNo.checked = true;
			baños.value = InmuebleJson.baños;	
			estado.value = InmuebleJson.estado;
			imagen.value = InmuebleJson.imagen;
			novedad.value = InmuebleJson.novedad;
			numHabitaciones.value = InmuebleJson.numHabitaciones;
			planta.value = InmuebleJson.planta;
			precio.value = InmuebleJson.precio;
			tamanio.value = InmuebleJson.tamanio;
			terraza.value = InmuebleJson.terraza;
			tipoInmueble.value = InmuebleJson.tipo.idTipo;
			descripcion.value = InmuebleJson.descripcion;
			
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
			descripcion : descripcion.value,
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
