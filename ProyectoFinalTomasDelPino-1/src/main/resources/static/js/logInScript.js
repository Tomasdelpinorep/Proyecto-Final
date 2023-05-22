let logInButton = document.getElementById('logInButton');
        logInButton.addEventListener("click",toggleVisibility);

        function toggleVisibility() {
            let element = document.getElementById("login-form");
            let computedStyle = window.getComputedStyle(element);
            let mainBody = document.getElementById("mainPage");
            if (computedStyle.display === "none") {
                element.classList.add('center-login');
                mainBody.classList.add('blur');
            } else {
                element.classList.remove('center-login');
                mainBody.classList.remove('blur');
            }
        }