const characternames = document.querySelector('#characters')

fetch("http://localhost:3000/characters")
    .then(response => response.json())
    .then(displayCharacters)

fetch("http://localhost:3000/novels")
    .then(response => response.json())
    .then(console.log)

function displayCharacters(characters) {
    characters.forEach(character => {
        const p = document.createElement('p')
        p.innerHTML = `<p>${character.name}</p>
            <p>${character.loves}</p>`
        characternames.appendChild(p)
    });
}

function createMatch(novels) {
    const options = document.createElement('option')
    
}