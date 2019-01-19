document.addEventListener("DOMContentLoaded", function () {
particlesJS('particles-js', 
{
	"particles": {
		"number": {
			"value": 60,
			"density": {
				"enable": true,
				"value_area": 800
			}
		},
		"color": {
			"value": "#ffffff"
		},
		"shape": {
			"type": "circle",
			"stroke": {
				"width": 0,
				"color": "#000000"
			},
			"polygon": {
				"nb_sides": 0
			},
			"image": {
				"src": "img/github.svg",
				"width": 100,
				"height": 100
			}
		},
		"opacity": {
			"value": 1.2,
			"random": false,
			"anim": {
				"enable": false,
				"speed": 0.4,
				"opacity_min": 0.4,
				"sync": false
			}
		},
		"size": {
			"value": 3.6,
			"random": true,
			"anim": {
				"enable": false,
				"speed": 1,
				"size_min": 0.5,
				"sync": false
			}
		},
		"line_linked": {
			"enable": true,
			"distance": 260,
			"color": "#ffffff",
			"opacity": 0.6,
			"width": 1
		},
		"move": {
			"enable": true,
			"speed": 2,
			"direction": "none",
			"random": true,
			"straight": false,
			"out_mode": "out",
			"bounce": false,
			"attract": {
				"enable": false,
				"rotateX": 1200,
				"rotateY": 1240
			}
		}
	},

	"interactivity": {
		"detect_on": "canvas",
		"events": {
			"onhover": {
				"enable": true,
				"mode": "grab"
			},
			"onclick": {
				"enable": true,
				"mode": "push"
			},
			"resize": true
		},
		"modes": {
			"grab": {
				"distance": 200,
				"line_linked": {
					"opacity": 1
				}
			},
			"bubble": {
				"distance": 400,
				"size": 40,
				"duration": 2,
				"opacity": 8,
				"speed": 3
			},
			"repulse": {
				"distance": 200,
				"duration": 0.4
			},
			"push": {
				"particles_nb": 1
			},
			"remove": {
				"particles_nb": 2

			}
		}
	},
	"retina_detect": false
  });

}, false);