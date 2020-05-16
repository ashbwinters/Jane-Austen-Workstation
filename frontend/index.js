const novelInfo = document.querySelector('#novel-placeholder')
console.log(novelInfo)
fetch(`http://localhost:3000/novels`)
    .then(response => response.json())
    .then(displayNovels)

function displayNovels(novels) {
    novels.forEach(novel => {
        const h2 = document.createElement('h2')
        h2.innerHTML = `<a href="novel.html?id=${novel.id}"> ${novel.title}</a>`
        novelInfo.appendChild(h2)
    });
}

