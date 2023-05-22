//SCRIPT FOR UPLOADPLAINOFFER.HTML

let nombre = document.getElementById("nombre");
let descripcion = document.getElementById("product-description");
let categoria = document.getElementById("categoria");
let km = document.getElementById("km");
let kmMotos = document.getElementById("kmMotos");
let puertas = document.getElementById("puertas");
let consumo = document.getElementById("consumo");
let cilindrada = document.getElementById("cilindrada");
let talla = document.getElementById("talla");
let m2 = document.getElementById("m2");
let banos = document.getElementById("banos");
let habitaciones = document.getElementById("habitaciones");
let direccion = document.getElementById("direccion");
let tipo_bici = document.getElementById("tipo_bici");
let num_marchas = document.getElementById("num_marchas");
let tiempo = document.getElementById("tiempo");
let calificacion = document.getElementById("calificacion");


let form = document.getElementById("form");
let form1 = document.getElementById("form1");
let form2 = document.getElementById("form2");
let form3 = document.getElementById("form3");
let formCoches = document.getElementById("form2_coches");
let formMotos = document.getElementById("form2_motos");
let formModa = document.getElementById("form2_moda");
let formInmo = document.getElementById("form2_inmo");
let formBicis = document.getElementById("form2_bicis");
let formServicios = document.getElementById("form2_servicios");
let nextButton = document.getElementById("nextButton");
let nextButton2 = document.getElementById("nextButton2");
let uploadOfferButton = document.getElementById("uploadOfferButton");


nextButton2.addEventListener("click", showLastForm); // no llama a validateForm2 porque no es necesario, no tiene atributos requeridos
nextButton.addEventListener("click", validateForm1);
uploadOfferButton.addEventListener("click", validateForm3);

function validateForm1() {
	if (nombre.value != "" && descripcion.value != "" && categoria.value != "") {
		showNextForm();
		hideAlert();
	} else {
		showAlert();
	}
}

function validateForm3(event) {
	event.preventDefault();
	if (valor_estimado.value != "" && remitente_busca_cat.value != "" && categoria.value != "") {
		let attributes = [nombre, descripcion, categoria, km, kmMotos, puertas, consumo, cilindrada, talla, m2, banos, habitaciones, direccion, tipo_bici, num_marchas, tiempo, calificacion]
		for (let i = 0; i < attributes.length; i++) {
			if (attributes[i].value === "") {
				attributes[i].value = "0";
			}
		}
		$('#successModal').modal('show');
		setTimeout(function() {
			form.submit();
			return true;
			},1000);
	} else {
		showAlert();
	}
}

//Esta función decide qué formulario mostrar tras el primer formulario
//el cual es común para todas las ofertas
function showNextForm() {
	form1.classList.add("hidden");
	form1.classList.remove("visible");
	form2.classList.remove("hidden");
	form2.classList.add("visible");

	if (categoria.value == "1") {
		formCoches.classList.add("visible");
		formCoches.classList.remove("hidden");
	} else if (categoria.value == "2") {
		formMotos.classList.add("visible");
		formMotos.classList.remove("hidden");
	} else if (categoria.value == "3") {
		formModa.classList.add("visible");
		formModa.classList.remove("hidden");
	} else if (categoria.value == "4") {
		formInmo.classList.add("visible");
		formInmo.classList.remove("hidden");
	} else if (categoria.value == "8") {
		formBicis.classList.add("visible");
		formBicis.classList.remove("hidden");
	} else if (categoria.value == "10") {
		formServicios.classList.add("visible");
		formServicios.classList.remove("hidden");
	} else {
		showLastForm();
	}
}

//Muestra el último formulario, también común para todas las ofertas
function showLastForm() {
	form2.classList.add("hidden");
	form3.classList.add("visible");
	form3.classList.remove("hidden");
}

//Muestro la alerta de que no se ha rellenado algún campo
//Debo usar un for each porque es necesario mostrar la alerta en todos los formularios, sean
//visibles o no, para que funcione

let alerts = document.querySelectorAll(".alert");
function showAlert() {
	alerts.forEach(alert => alert.classList.remove("hidden"));
}

function hideAlert() {
	alerts.forEach(alert => alert.classList.add("hidden"));
}
