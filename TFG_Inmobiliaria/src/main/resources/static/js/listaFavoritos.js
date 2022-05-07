var listaFavoritos = '';
var idInmueble = '';
var username = '';
var idFavorito = '';
//si incluir inmueble es truedebo incluir el inmueble en la lista de favoritos, porque no se encuentra en ella
var incluirInmueble = true;
const añadirFavoritos = document.querySelectorAll(".añadirFavoritos").forEach(item =>{
	item.addEventListener('click', event => {
		event.preventDefault();
	incluirInmueble = true;
	username = usuario.textContent;
	idInmueble = item.dataset.idinmueble;
	
	console.log('entro al js de añadir favoritos');
	console.log('usuario '+ username);
	console.log('idInmueble ' + idInmueble);
	
	
	fetch(`http://localhost:4000/rest/inmobiliaria/buscarFavoritosUsuario/${usuario.textContent}`, {
		method:'GET',
		headers: {'Content-type': 'application/json'}
		})
		.then(response =>{
			if(response.status == 200){
				
				return response.json();
			}else{
				
				throw new Error(response.status);
			}	
		})
		.then(UsuarioJson => {
			//console.log(UsuarioJson);
			//console.log('======');
			listaFavoritos = UsuarioJson;
			console.log('Lista de Favoritos');	
			console.log(listaFavoritos);
			idFavorito = listaFavoritos.length + 1;
			console.log('IdFavorito que paso ' + idFavorito);
			
		})
		.catch(error => {
			console.error("Error: ", error.message);
		});
		
		
		fetch(`http://localhost:4000/rest/inmobiliaria/buscarInmueble/${idInmueble}`, {
		method:'GET',
		headers: {'Content-type': 'application/json'}
		})
		.then(response =>{
			if(response.status == 200){
				//alert('El inmueble existe');
				
				return response.json();
			}else{
				
				throw new Error(response.status);
			}	
		})
		.then(UsuarioJson => {
			console.log('respuesta del otro fecth');
			console.log('Inmueble clickado');
			console.log(UsuarioJson);
			
			
		})
		.catch(error => {
			console.error("Error: ", error.message);
		});
		
		for(ele of listaFavoritos){
				console.log('idInmuebles favoritos ' + ele.inmueble.idInmueble);
				if(ele.inmueble.idInmueble == idInmueble){
					incluirInmueble = false;
				}	
		}
		console.log('¿debo incluir el inmueble? ' + incluirInmueble);
		
		if(incluirInmueble == true){
			fetch('http://localhost:4000/rest/inmobiliaria/añadirInmuebleFavorito/', {
				method: 'PUT',
				body: JSON.stringify({
					idInmuebleDTO : idInmueble,
					usernameDTO : username,
					idFavoritoDTO : idFavorito
				}),
			headers: {'Content-type': 'application/json'}
			})
		}
		
	
	});
	
	

});

