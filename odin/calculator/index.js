const nums = document.getElementsByClassName("num");
const opers = document.getElementsByClassName("oper");
const result = document.getElementsByClassName("res")
const allButtons = document.getElementsByClassName("button")

var numOne = ""
var Operator = ""
var numTwo = ""

console.log(nums);
console.log(opers);
console.log(result);


// nums.foreach(element => element.addEventListener(("click", (e) => {
//     const result_window = document.getElementsByClassName("result-row")[0];
//     console.log(result_window);
//     result_window.innerHTML(self);
// })));

Array.prototype.forEach.call(allButtons, function(el) {
    el.addEventListener("click", function(e) {
        const result_window = document.getElementById("result-window");
        console.log(el.className);
        if (el.className == "button num") {
            if (Operator == "") {
                numOne += el.innerHTML
            } else {
                numTwo += el.innerHTML
            }
        }
        if (el.className == "button oper") {
            if (numTwo != "") {
                calculate(numOne, numTwo, Operator);
            }
            Operator = el.innerHTML;
        }
        if (el.className == "button res") {
            calculate(numOne, numTwo, Operator);
            Operator = "";
        }
        result_window.innerHTML = numOne + Operator + numTwo;
    });
});

function calculate(num1, num2, oper) {
    var result;
    num1 = Number(num1);
    num2 = Number(num2);

    if (oper == "+") {
        result = num1 + num2;
    } else if (oper == "-") {
        result = num1 - num2;
    } else if (oper == "*") {
        result = num1 * num2;
    } else if (oper == "/") {
        result = num1 / num2;
    }

    numOne = String(result);
    numTwo = "";
}