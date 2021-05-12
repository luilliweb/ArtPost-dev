/**
 * Constantes y Variables
 */
var uri;
if (location.origin.indexOf('moduschile')) {
	uri =  location.origin;
} else {
	uri = location.origin+'/chamba/artpost/';
}

/**
 * Observaciones
 */

const MOfn = (target, options, callback) => {
	var MO = new MutationObserver((mutationList, observer) => {
		mutationList.forEach( mutation => {
			/*switch (mutation.type) {
				case 'childList':
					
					 Observa y ejecuta Mutaciones en uno o mas hijos del DOM
					 cuando son añadidos o eliminados.
					 
				
				break;
				case 'attributes': 
				 	
				 	Observa cuando el valor de un atributo en el mutation.target ha cambiado
				 	 
				 	
				break;
			}*/
			if (typeof callback === 'function') {
				callback.apply(null,[mutation,observer]);
			}
		});	
	});
	return MO.observe(target, options);
}

const ObserverOptions = {
	childList: true,
	attributes: true,
	subtree: true
}

/**
 * Funciones
 */
function querySelector(selector, context = document) {
	return context.querySelectorAll(selector).length > 1 ? 
		context.querySelectorAll(selector) :
		context.querySelector(selector) != null ? [context.querySelector(selector)]: [];
}

function addEv(el, events, callback, capture = false){
	el.addEventListener(events, callback, capture);
}


document.addEventListener('DOMContentLoaded', e => {
	/**
	 * Active Video
	 */
	const plyr = querySelector('[data-role*="plyr"]');
	if(plyr.length > 0){
		Array.from(plyr).map( video => {
			const dataset = video.dataset;
			const player = new Plyr(video, {
				blankVideo: uri+ 'resources/img/blank.mp4',
				autoplay: dataset.autoplay !== undefined ? dataset.autoplay : false,
				autopause: dataset.autopause !== undefined ? dataset.autopause : false,
				hideControls: dataset.hideControls !== undefined ? dataset.hideControls : true,
			});
			video.plyr = player;
		});
	}
	/**
	 * Observamos la clase active para pausar o reproducir el video
	 */
	const slider = querySelector('.slider');
	if (slider.length > 0) {
		const listVideo = querySelector(".plyr", slider[0]);
		if (listVideo.length > 0) {
			Array.from(listVideo).map(plyr => {
				let video = querySelector("video", plyr)[0];
				MOfn(plyr.parentNode, {
					childList: true,
					attributes: true,
					subtree: false
				},
				mutation => {
					if(mutation.type === 'attributes') {
						if (mutation.attributeName === 'class') {
							if (mutation.target.classList.contains('active')) {
								video.plyr.play();
							} else {
								video.plyr.stop();
							}						
						}
					}					
				})
			});			
		}
	}

	/*
	Menú
	 */
	const offCanvas = querySelector('#offcanvaMenu');
	if (offCanvas.length > 0) {
		const timesOffC = querySelector('.btn-close',offCanvas[0]);
		const navLinkOffC = querySelector('.nav-link',offCanvas[0]);
		const menuButton = querySelector('.togglemenu');
		const offMenu = new bootstrap.Offcanvas(offCanvas[0]);
		addEv(menuButton[0], 'click', e => {
			/*if (!offMenu._isShown) {
				offMenu.show(0);
				console.log(offMenu)
			}*/	
			offCanvas[0].classList.add('show');
		});
		let listEl = [].concat(timesOffC, Array.from(navLinkOffC));
		listEl.forEach(el => {
				addEv(el, 'click', e => {
				offCanvas[0].classList.remove('show');
			});
		})
	}
	

	console.log('DOM Cargado');
})

window.addEventListener('load', e => {
	
})

