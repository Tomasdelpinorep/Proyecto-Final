let alerts = document.querySelectorAll(".alert");
function showAlert() {
	alerts.forEach(alert => alert.classList.remove("hidden"));
}

function hideAlert() {
	alerts.forEach(alert => alert.classList.add("hidden"));
}

let userForm = document.getElementById("userForm");

userForm.addEventListener("submit", function(e) {
	e.preventDefault();

	$('#successModal').modal('show');
	setTimeout(function() {
		userForm.submit();
		return true;
	}, 1000);
});