// Complete the fairRations function below.
function fairRations(B) {

    var oddNumbers = 0;
    var totalDistance = 0;
    var i = 0;
    
    for(i ; i < B.length; i++)        
        if (B[i] % 2 == 1) {
            oddNumbers++;
            for (var j = i + 1; B[j] % 2 == 0 ; j++) {

                if(j + 1 > B.length) return "NO";
                totalDistance++;                              
            }    

            if (j + 1 > B.length) return "NO";        
            i = j;
        }       

    return (oddNumbers + totalDistance) * 2;

    //Made by Ivan Derlich 2019
}


function fairRationsTest(input, expected, num) {

    var actual = fairRations(input);//despues buscar la forma de que el input se acomode a la funcion

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

num = 1;
input = [1, 2];
expected = "NO";
fairRationsTest(input, expected, num);


num = 0; 
input = [2, 3, 4, 5, 6];
expected = 4;
fairRationsTest(input, expected, num);