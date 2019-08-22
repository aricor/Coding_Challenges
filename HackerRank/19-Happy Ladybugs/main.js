function readLine() {
    return inputString[currentLine++];
}

for(var i = 0 ; i < b.length ; i++){ 
        if(i == 0)
            if(b[i] != b[i+1]) return true
        else if(i == b.length - 1)
            if(b[i-1] != b[i]) return true
        else
            if(b[i-1] != b[i] || b[i] != b[i+1]) return true        
    }
    return false

// Complete the happyLadybugs function below.
function happyLadybugs(b) {

    // console.log(b)

    var groupings = new Map()

    for (var i = 0; i < b.length; i++)
        groupings.set(
            b[i], //key
            0 //val
        )

    for (var i = 0; i < b.length; i++)
        groupings.set(
            b[i], //key
            groupings.get(b[i]) + 1 //val
        )

    // groupings.forEach((key,val)=>{console.log(val + ": " + key)})

    if (groupings.size == 0 ||
        (groupings.size == 1 && groupings.has("_"))
    )
        return "YES" //If there are no letters, returns "YES"

    "Stop"

    // groupings.forEach((key,val)=>{console.log(val + ": " + key)})
    var exit = false;
    groupings.forEach((val, key) => {
        if (val == 1 && key != "_") exit = true
    })

    if (exit) return "NO"


    if (groupings.has("_") == false //if there are no spaces
        &&
        noAdyacent(b)//one letter of b doesn't have another of the same color adyacent it
    )
        return "NO"

    return "YES"

}

function happyLadybugsTest(input, expected, num) {

    var actual = happyLadybugs(input);//despues buscar la forma de que el input se acomode a la funcion

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
input = [AABBC];
expected = "NO";
happyLadybugsTest(input, expected, num);


num = 1;
input = [AABBC_C];
expected = "YES";
happyLadybugsTest(input, expected, num);

num = 2;
input = [_];
expected = "YES"; 
happyLadybugsTest(input, expected, num);

num = 3;
input = [DD__FQ_QQF];
expected = "YES";
happyLadybugsTest(input, expected, num);

num = 4;
input = [AABCBC];
expected = "NO";
happyLadybugsTest(input, expected, num);

num = 5;
input = [RBY_YBR];
expected = "YES";
happyLadybugsTest(input, expected, num);

num = 6;
input = [X_Y__X];
expected = "NO";
happyLadybugsTest(input, expected, num);

num = 7;
input = [__];
expected = "YES";
happyLadybugsTest(input, expected, num);

num = 8;
input = [B_RRBR];
expected = "YES";
happyLadybugsTest(input, expected, num);