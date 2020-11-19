

const cursorDate = () => {

  const allCursors = document.querySelectorAll(".cursor");
  const inputDate = document.querySelector("#booking_date")
  const choice = []
  allCursors.forEach((element) => {
    element.addEventListener("click", (event) => {
      const userchoice = element.querySelector(".round")

        if (userchoice.classList.contains("user-choice")) { //change color
          userchoice.classList.remove("user-choice");
          const index = choice.indexOf(element.querySelector("span").innerText);  //remove to the array "choice"
          choice.splice(index, 1);

        } else {
          userchoice.classList.add("user-choice");
          choice.push(element.querySelector("span").innerText) // push to the array choice
        }

      inputDate.value = choice;
    });
  });
};




export { cursorDate }
