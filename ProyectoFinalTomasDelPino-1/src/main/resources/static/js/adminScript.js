//Menu toggle
      let toggle = document.querySelector(".toggle");
      let navigation = document.querySelector(".navigation");
      let main = document.querySelector(".main");
      let logo = document.querySelector(".logo");
      let isSidebarOpen = localStorage.getItem('sidebarOpen') === "true";
      let back = document.querySelector(".back");
      toggle.addEventListener("click",toggled);

      //Opens or closes the sidebar when loading the page
      if (isSidebarOpen || isSidebarOpen === null) {
          navigation.classList.remove("active"); //removing active makes the sidebar open
          logo.classList.remove("hide-logo");
          main.classList.remove("active");
          back.classList.remove("hidden");
      } else {
          main.style.transitionDuration="0s";
          navigation.style.transitionDuration = '0s';
          navigation.classList.add("active"); //adding active makes the sidebar close
          logo.classList.add("hide-logo");
          main.classList.add("active");
          back.classList.add("hidden");
      }

      toggle.onclick = function () {
          navigation.classList.toggle("active");
          logo.classList.toggle("hide-logo");
          main.classList.toggle("active");
          back.classList.toggle("hidden");
          localStorage.setItem('sidebarOpen', !navigation.classList.contains("active"));
      };

      let list = document.querySelectorAll(".navigation li");
      function activeLink() {
          list.forEach((item) => item.classList.remove("hovered"));
          this.classList.add("hovered");
      }

      list.forEach((item) => item.addEventListener("mouseover", activeLink));

      function toggled(){ //returns transition to normal every time the menu is toggled to open or close
          navigation.style.transitionDuration = '0.5s';
          main.style.transitionDuration="0.5s";
      }