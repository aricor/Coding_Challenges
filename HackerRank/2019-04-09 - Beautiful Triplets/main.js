function beautifulTriplets(d, arr) {
    
    var count = 0;  
    var length =  arr.length;

    for(var i = 0; i < length-2; i++ )
        for (var j = i+1; j < length-1; j++) 
            if (arr[j] - arr[i] == d)
                for (var k = j+1; k < length; k++)              
                    if( arr[k] - arr[j] == d)
                        count++; 
                        
    return count;
}

function beautifulTripletsTest(input, expected, num) {

    var actual = beautifulTriplets(input[0],input[1]);//despues buscar la forma de que el input se acomode a la funcion

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

//Test Case 0 ---> nombre del test case en hackerrank
num = 0; //test case en mi maquina---> son nros diferentes, en este caso iguales, el caso cero siempre va a coincidir
input = [
    3,
    [1, 2, 4, 5, 7, 8, 10]
];
expected = 3;
beautifulTripletsTest(input, expected, num);


num = 1; //test case en mi maquina---> son nros diferentes, en este caso iguales, el caso cero siempre va a coincidir
input = [
    1,
    [2,2,3,4,5]
];
expected = 3;
beautifulTripletsTest(input, expected, num);



