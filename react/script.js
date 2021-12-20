var list = [
    {title: "Rad Red"},
    {title: "Lawn"},
    {title: "Party Pink"},
]

const addColor = (title, list) => [...list, {title}]

console.log(addColor("Glam Green", list).length)
console.log(list.length)
