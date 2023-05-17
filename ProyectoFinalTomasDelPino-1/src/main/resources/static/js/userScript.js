let alerts = document.querySelectorAll(".alert");
function showAlert(){
    alerts.forEach(alert => alert.classList.remove("hidden"));
}

function hideAlert(){
    alerts.forEach(alert => alert.classList.add("hidden"));
}