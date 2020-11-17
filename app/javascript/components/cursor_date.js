

const cursorDate = () => {
  const allCursors = document.querySelectorAll(".cursor");
  const inputDate = document.querySelector(".booking_date")
  allCursors.forEach((element) => {
    element.addEventListener("click", (event) => {
      console.log(element.querySelector("span").innerText)
      console.log(inputDate)
      inputDate.value = element.querySelector("span").innerText;
    });
  });
};




export { cursorDate }
