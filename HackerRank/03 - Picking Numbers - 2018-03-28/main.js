console.log("Hello World!");

function sortNumber(a, b) {
    return a - b;
}

function pickingNumbers(a=[]) {

    // input = [4, 6, 5, 3, 3, 1];
    // expected = 3;
    var sub_array_sizes = [];
    var sub_array_length = 0;

    a.sort(sortNumber);
 
    while(a.length > 0){ 

        var sub_array_length = 1;       
        for (var i = 1; i < a.length; i ++) {
            abs = Math.abs(a[0] - a[i]);
            if( abs <= 1 ) {
                sub_array_length++;                
                a.splice(i,1);
                i--;
            }
        }
        
        sub_array_sizes.push(sub_array_length);
        a.splice(0, 1);
    }   
            
    var max = Math.max(...sub_array_sizes);  
    return max;
}
function pickingNumbersTest(input, expected) {

    console.log("------");

    console.log("Input");
    console.log(input);

    console.log("Expected:");
    console.log(expected);

    var actual = pickingNumbers(input, expected);
    console.log("Actual:");
    console.log(actual);

    if (expected == actual)
        console.log("PASSED");
    else
        console.log("FAILED");
  
}

input = [1, 2, 2, 3, 1, 2];
expected = 5;
pickingNumbersTest(input, expected);

input = [4, 6, 5, 3, 3, 1];
expected = 3;
pickingNumbersTest(input, expected);





