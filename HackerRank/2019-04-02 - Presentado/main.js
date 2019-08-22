console.log("Hello World!")

function findDigits(n) {

    var aon  = ("" + n).split("")//aon = A. O. N. = Array of numbers
    var divisible = 0;   
    aon.forEach(digit => {
         n % digit === 0 && digit !== 0 && divisible ++;
    });    
    return divisible;

}

function findDigitsTest(input, expected) {

    console.log("------");

    console.log("Input");
    console.log(input);

    console.log("Expected:");
    console.log(expected);

    var actual = findDigits(input);//despues buscar la forma de que el input se acomode a la funcion
    console.log("Actual:");
    console.log(actual);

    if (expected == actual)
        console.log("PASSED");
    else
        console.log("FAILED");

}

input = 1012
expected = 3;
findDigitsTest(input, expected);

input = 12
expected = 2;
findDigitsTest(input, expected);