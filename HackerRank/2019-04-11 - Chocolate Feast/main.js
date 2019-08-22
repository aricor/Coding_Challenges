
function chocolateFeast(n, c, m) {

    var chocolates = Math.floor(n / c);

    var wrappers = chocolates;
    
    var moreChocolates = Math.floor(chocolates / m);      

    while(moreChocolates > 0){
        wrappers += moreChocolates - moreChocolates * m;        
        chocolates += moreChocolates;
        moreChocolates = Math.floor(wrappers / m);
    }

    return chocolates;
 
}


function chocolateFeastTest(input, expected, num) {

    var actual = chocolateFeast(input[0], input[1], input[2]); //despues buscar la forma de que el input se acomode a la funcion

    console.log("------");

    if (expected === actual){
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

num = 2;
input = [6, 2, 2];
expected = 5;
chocolateFeastTest(input, expected, num);


num = 0; 
input = [10, 2, 5];
expected = 6;
chocolateFeastTest(input, expected, num);


num = 1;
input = [12, 4, 4];
expected = 3;
chocolateFeastTest(input, expected, num);

num = 2;
input = [7, 3, 2];
expected = 3;
chocolateFeastTest(input, expected, num);