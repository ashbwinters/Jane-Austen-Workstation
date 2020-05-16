const titleCard = document.querySelector('#title')
const characterCard = document.querySelector("#characters")

const params =  new URLSearchParams(window.location.search)
const id = params.get('id')

fetch(`http://localhost:3000/novels/${id}`)
    .then(response => response.json())
    .then(novel => {
        displayNovel(novel)
        displayCharacters(novel.characters)
        characterCreationlink()
    })

function displayNovel(novel) {
    const h1 = document.createElement('h1')
    h1.innerText = `${novel.title}`
    titleCard.appendChild(h1)
}

function displayCharacters(characters) {
    characters.forEach(character => {
        const h2 = document.createElement('h2')
        h2.innerHTML = `${character.name} &hearts; ${character.loves}`
        characterCard.appendChild(h2)
    });
}

function characterCreationlink() {
    const h3 = document.createElement('h3')
    h3.innerHTML = `<a href="character.html"> Make a match</a>`
    characterCard.appendChild(h3)
}
