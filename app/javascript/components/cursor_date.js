

const cursorDate = () => {
  const allCursors = document.querySelectorAll(".cursor");
  const inputDate = document.querySelector("#booking_date")
  allCursors.forEach((element) => {
    element.addEventListener("click", (event) => {
      const userchoice = element.querySelector(".round")
        if (userchoice.classList.contains("user-choice")) {
          userchoice.classList.remove("user-choice");
        } else {
          userchoice.classList.add("user-choice");
        }
      inputDate.value = element.querySelector("span").innerText;
    });
  });
};




export { cursorDate }
