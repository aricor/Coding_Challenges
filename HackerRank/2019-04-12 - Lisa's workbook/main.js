function workbook(n, k, arr) {
    
    var specialProblems = 0;
    var pageNr = 1;    
    var l;

    for(var chapter = 1 ; chapter <= arr.length; chapter++ ){
        l = arr[chapter-1];                
        for (var problemNr = 1 ; l > 0 ; pageNr++)
            for (var j = 0; j < k && l > 0 ; problemNr++){
                j++; l--;                                  
                if(problemNr == pageNr)
                    specialProblems++;   
            }           
    }       
    return specialProblems;
}


function workbookTest(input, expected, num) {

    var actual = workbook(input[0],input[1],input[2]);//despues buscar la forma de que el input se acomode a la funcion

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
input = [
    5,
    3,
    [4, 2, 6, 1, 10]
];
expected = 4;
workbookTest(input, expected, num);

num = 2;
input = [
    10,
    5,
    [3, 8, 15, 11, 14, 1, 9, 2, 24, 31]
];
expected = 8;
workbookTest(input, expected, num);


