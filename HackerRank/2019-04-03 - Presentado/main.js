function libraryFine(d1, m1, y1, d2, m2, y2) {

     return 
     
        y2 < y1 ? 

            10000 :

        y1 < y2 || m1 < m2 || (m1 === m2 && d1 <= d2) ? 
            
            0 :

        m2 < m1 ? 
            
            (m1 - m2) * 500 :

        (d1 - d2) * 15;    
}


function libraryFineTest(input, expected, num) {

    var actual = libraryFine(input[0], input[1], input[2], input[3], input[4], input[5]);//despues buscar la forma de que el input se acomode a la funcion

    console.log("------");

    if (expected == actual){
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

//Test Case 0
num = 0;
input = [6, 6, 2015, 9, 6, 2016]
expected = 0;
libraryFineTest(input, expected, num);


num = 1;
input = [9, 6, 2015, 6, 6, 2015]
expected = 45;
libraryFineTest(input, expected, num);

//Test case 2
num = 2;
input = [30, 5, 2015, 2, 5, 2015]
expected = 420; 
libraryFineTest(input, expected, num);

//Test case 5
num = 3;
input = [2, 7, 1014, 1, 1, 1015]
expected = 0;
libraryFineTest(input, expected, num);

//Test case 11
num = 4;
input = [1, 1, 2001, 1, 1, 2000]
expected = 10000;
libraryFineTest(input, expected, num);


