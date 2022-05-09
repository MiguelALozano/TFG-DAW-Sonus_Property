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
	listaFavoritosCreada =false; //controlo que se ha terminado la peticion al RESTcontroler y tengo una lista de favoritos recuperada  de la BBDD
	username = usuario.textContent;
	idInmueble = item.dataset.idinmueble;
	
	
	console.log('entro al js de añadir favoritos');
	console.log('usuario de sesion: '+ username);
	console.log('idInmueble del inmueble clickado en añadir favoritos: ' + idInmueble);
	
	
	fetch(`http://localhost:4000/rest/inmobiliaria/buscarFavoritosUsuario/${usuario.textContent}`, {
		method:'GET',
		headers: {'Content-type': 'application/json'}
		})
		.then(response =>{
			if(response.status == 200){
				
				return response.json();
			}else{
				fetch('http://localhost:4000/rest/inmobiliaria/añadirInmuebleFavorito/', {
				method: 'PUT',
				body: JSON.stringify({
					idInmuebleDTO : idInmueble,
					usernameDTO : username,
					idFavoritoDTO : idFavorito
				}),
			headers: {'Content-type': 'application/json'}
			})
				throw new Error(response.status);
			}	
		})
		.then(UsuarioJson => {
			listaFavoritos = UsuarioJson;
			console.log('Lista de Favoritos del usuario');	
			console.log(listaFavoritos);
			idFavorito = 1;
			console.log('IdFavorito que paso ' + idFavorito);
			for(ele of listaFavoritos){
				console.log('idInmuebles favoritos ' + ele.inmueble.idInmueble);
				if(ele.inmueble.idInmueble == idInmueble){
					incluirInmueble = false;
				}	
			}
			if(incluirInmueble == true){
			console.log('Entro a fetch para añadir inmueble');
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
			
		})
		.catch(error => {
			console.error("Error: ", error.message);
		});
		
		
		
		
	});
	
});

