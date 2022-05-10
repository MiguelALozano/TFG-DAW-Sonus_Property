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
			idFavorito = 1;
			for(ele of listaFavoritos){
				if(ele.inmueble.idInmueble == idInmueble){
					incluirInmueble = false;
				}	
			}
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
			
		})
		.catch(error => {
			console.error("Error: ", error.message);
		});
	});
	
});

