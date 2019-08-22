/*
https://www.hackerrank.com/challenges/manasa-and-stones/problem
*/

function stones(n, a, b) {
    var arrStones = [];
    for (var i = 0; i < n; i++) {
        var temp = a * ((n - 1) - i) + b * i;
        if (arrStones.indexOf(temp) == -1) arrStones.push(temp);
    }
    arrStones.sort((a, b) => { return a - b })
    return arrStones;
}


function stonesTest(input, expected, num) {

    var actual = stones(input[0], input[1], input[2]);

    console.log("------");

    if(expected.length == actual.length){
        for(i = 0 ; i < expected.length; i++)
            if (expected[i] != actual[i]){
                break;
            }
        console.log("PASSED TEST N " + num);
        return 0;
    }
    
    console.log("FAILED TEST N "+ num);    

    console.log("Input");
    console.log(input);

    console.log("Expected:");
    console.log(expected);

    console.log("Actual:");
    console.log(actual);
       
  
}

num = 0; 
input = [3, 1, 2];
expected = [2, 3, 4 ];
stonesTest(input, expected, num);

num = 1;
input = [4, 10, 100];
expected = [30, 120, 210, 300];
stonesTest(input, expected, num);
