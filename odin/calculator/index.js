const nums = document.getElementsByClassName("num");
const opers = document.getElementsByClassName("oper");
const result = document.getElementsByClassName("res")

console.log(nums);
console.log(opers);
console.log(result);


// nums.foreach(element => element.addEventListener(("click", (e) => {
//     const result_window = document.getElementsByClassName("result-row")[0];
//     console.log(result_window);
//     result_window.innerHTML(self);
// })));

Array.prototype.forEach.call(nums, function(el) {
    el.addEventListener("click", function(e) {
        const result_window = document.getElementById("result-window");
        console.log(el);
        result_window.innerText = el.innerHTML;
    });
});