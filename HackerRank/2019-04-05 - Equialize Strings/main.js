function sortNumber(a, b) {
    return a - b;
}
function findMax(a, b) {
    return Math.max(a, b);
}

// // Complete the equalizeArray function below.
function equalizeArray(arr) {
	
	//ordenar
	arr.sort(sortNumber);
    var repsArr = [];
    
    //encontrar un array de repeticiones
    reps = 1;
	for(var i = 0; i < arr.length ; i++){
        
		if(arr[i]==arr[i+1]&& i <arr.length)
            reps++;
        else{
            repsArr.push(reps);
            reps = 1;
        }
	}
	
    //encontrar el elemento maximo dentro de ese array: repMax
    var repMax = repsArr.reduce(findMax);

	return arr.length - repMax;

}

function equalizeArrayTest(input, expected, num) {

    var actual = equalizeArray(input);//despues buscar la forma de que el input se acomode a la funcion

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
input = [3, 3, 2, 1, 3];
expected = 2;
equalizeArrayTest(input, expected, num);


// num = 1;
// input = [9, 6, 2015, 6, 6, 2015]
// expected = 45;
// equalizeArrayTest(input, expected, num);

// num = 2;
// // input = [30, 5, 2015, 2, 5, 2015]
// // expected = 420; 
// // equalizeArrayTest(input, expected, num);

// //Test case 5
// num = 3;
// // input = [2, 7, 1014, 1, 1, 1015]
// // expected = 0;
// // equalizeArrayTest(input, expected, num);

// //Test case 11
// num = 4;
// // input = [1, 1, 2001, 1, 1, 2000]
// // expected = 10000;