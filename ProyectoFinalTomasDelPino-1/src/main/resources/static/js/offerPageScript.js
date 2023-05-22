$(document).ready(function() {
	$('.image-container').hover(
		function() {
			$(this).find('.btn-overlay').css('opacity', 1);
		},
		function() {
			$(this).find('.btn-overlay').css('opacity', 0);
		}
	);
});

function submitForm(event, offerId) {
	// Prevent the default form submission behavior
	event.preventDefault();
	let form = document.getElementById("submitBarterForm" + offerId);
	let selectedOffer = form.elements["selectedOffer"].value;
	if (selectedOffer === "") {
		$('#failureModal').modal('show');
		return false; // Prevent form submission

		// Delay the form submission
	} else {
		$('#successModal').modal('show');
		setTimeout(function() {
			form.submit();
			return true; // Allow form submission	
		}, 1000);
	}
}
