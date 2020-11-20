
const searchAuto = () => {
  const input = document.getElementById('myInput');
  const pokemons = JSON.parse(input.dataset.pokemons);
  const pokemonsCard = Array.from(document.querySelectorAll("[data-name]"));
  console.log(input.value);
  console.log(pokemons.class);

  input.addEventListener("keyup", event => {
    pokemonsCard.forEach((card) => {
      card.classList.remove('d-none')
    });
    console.log(pokemonsCard)
    const matchingPokemons = pokemonsCard.filter((card) => {
      return card.dataset.name.match(input.value) ? false : true
      // return card.match(input.value) ? true : false
    });
    console.log(matchingPokemons)
    matchingPokemons.forEach((card) => {
      card.classList.add('d-none')
    });
  });
}


export { searchAuto }




