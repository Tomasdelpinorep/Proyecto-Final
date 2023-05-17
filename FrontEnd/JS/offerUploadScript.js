//SCRIPT FOR UPLOADPLAINOFFER.HTML

let form1 = document.getElementById("form1");
let form2 = document.getElementById("form2");
let form3 = document.getElementById("form3");
let formCoches = document.getElementById("form2_coches");
let formMotos = document.getElementById("form2_motos");
let formModa = document.getElementById("form2_moda");
let formInmo = document.getElementById("form2_inmo");
let formBicis = document.getElementById("form2_bicis");
let formServicios = document.getElementById("form2_servicios");
let nextButton2 = document.getElementById("nextButton2");
let categoria = document.getElementById("categoria");
nextButton2.addEventListener("click", showLastForm);

form1.addEventListener("submit", function(e) {
    let nombreOferta = document.getElementById("product-name");
    let descripcionOferta = document.getElementById("product-description");

    e.preventDefault();

    if (nombreOferta.value === "" || descripcionOferta.value === "") {
    } else {
      showNextForm();
      hideAlert();
    }
  });

  //ya se completa el formulario, si se hace bien se envía el 1 y el 3, el 2 como no
  //tenía atributos required ya se envió antes
  form3.addEventListener("submit", function(e) {
    let valorEstimadoOferta = document.getElementById("valor_estimado");
    let remitente_busca_catOferta = document.getElementById("remitente_busca_cat");
    e.preventDefault();

    if (valorEstimadoOferta === "" || remitente_busca_catOferta === "") {
    } else {
      form1.submit();
      form3.submit();
    }
  });

//Esta función decide qué formulario mostrar tras el primer formulario
//el cual es común para todas las ofertas
function showNextForm() {
  form1.classList.add("hidden");
  form1.classList.remove("visible");
  form2.classList.remove("hidden");
  form2.classList.add("visible");

  if (categoria.value == "Coches") {
    formCoches.classList.add("visible");
    formCoches.classList.remove("hidden");
  } else if (categoria.value == "Motos") {
    formMotos.classList.add("visible");
    formMotos.classList.remove("hidden");
  } else if (categoria.value == "Moda") {
    formModa.classList.add("visible");
    formModa.classList.remove("hidden");
  } else if (categoria.value == "Inmobiliaria") {
    formInmo.classList.add("visible");
    formInmo.classList.remove("hidden");
  } else if (categoria.value == "Bicis") {
    formBicis.classList.add("visible");
    formBicis.classList.remove("hidden");
  } else if (categoria.value == "Servicios") {
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
function showAlert(){
    alerts.forEach(alert => alert.classList.remove("hidden"));
}

function hideAlert(){
    alerts.forEach(alert => alert.classList.add("hidden"));
}
