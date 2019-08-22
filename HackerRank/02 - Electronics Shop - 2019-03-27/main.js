//Input:
    //keyboards: Array of keyboards of unknown lenght.
    //drives: Array of drives of unkown lenght.
    //b: Money Monica has

function getMoneySpent(keyboards, drives, b) {  

    var actual_purchase = 0;    

    for(var i = 0; i < keyboards.length ;i++){
        for ( var j = 0; j < drives.length ; j++){
            var possible_purchase = keyboards[i] + drives[j];
            if(possible_purchase <= b && possible_purchase > actual_purchase)                
                actual_purchase = possible_purchase;            
        }
    }

    return actual_purchase === 0 ? -1:  actual_purchase;   
 
}


function getMoneySpentTest(input, expected) {

    console.log("------");

    var keyboards = input[0];
    var drives = input[1];
    b = input[2];
    // n = input[0]
    // console.log("Book length:")
    // console.log(n);


    // p = input[1]
    // console.log("Page in question:")
    // console.log(p);

    console.log("Expected:")
    console.log(expected);

    var actual = getMoneySpent(keyboards, drives, b);

    console.log("Actual:")
    console.log(actual);
}

input = [[3, 1], [5, 2, 8], 10];
expected = 9;
getMoneySpentTest(input, expected);

input = [[4], [5], 5];
expected = -1;
getMoneySpentTest(input, expected);