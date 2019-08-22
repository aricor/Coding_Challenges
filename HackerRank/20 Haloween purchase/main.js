function howManyGames(p, d, m, s) {
    var spent = 0    
    for(var nrofgames = 0; spent <= s ; nrofgames++){         
        var price = p - d * nrofgames        
        if(price < m)
            price = m        
        spent += price
    }
    return nrofgames - 1
}



function howManyGamesTest(input, expected, num) {

    var actual = howManyGames(input[0],input[1],input[2],input[3]);//despues buscar la forma de que el input se acomode a la funcion

    console.log("------");

    if (expected === actual){
        console.log("PASSED TEST N " + num);
        return 0;
    }
	
	// para chequear igualdad de dos arreglos
	//if(expected.length == actual.length){
    //    for(i = 0 ; i < expected.length; i++)
    //        if (expected[i] != actual[i]){
    //            break;
    //        }
    //    console.log("PASSED TEST N " + num);
    //    return 0;
    //}
	
    
    console.log("FAILED TEST N "+ num);    

    console.log("Input");
    console.log(input);

    console.log("Expected:");
    console.log(expected);

    console.log("Actual:");
    console.log(actual);       
  
}

num = 0; 
input = [20, 3, 6, 80];
expected = 6;
howManyGamesTest(input, expected, num);


// num = 1;
// input = [9, 6, 2015, 6, 6, 2015];
// expected = 45;
// [nombredelafuncion]Test(input, expected, num);

// num = 2;
// input = [30, 5, 2015, 2, 5, 2015];
// expected = 420; 
// [nombredelafuncion]Test(input, expected, num);

// num = 3;
// input = [2, 7, 1014, 1, 1, 1015];
// expected = 0;
// [nombredelafuncion]Test(input, expected, num);

// num = 4;
// input = [1, 1, 2001, 1, 1, 2000];
// expected = 10000;