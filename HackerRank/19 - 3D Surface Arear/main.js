/*
https://www.hackerrank.com/challenges/manasa-and-stones/problem
*/
function surfaceArea(A) {
    var rows = A.length
    var columns = A[0].length
    var surface = 0
    var upHeight
    var downHeight
    var leftHeight
    var rightHeight
    
    for(var i=0;i<rows;i++){
        for(var j=0;j<columns;j++){
            var height = A[i][j]            

            if(i == 0)//front
                var front = height;
            else if(height < (upHeight = A[i-1][j] ))
                front = 0;
            else
                front = height - upHeight
            if(i+1 == rows) //back
                var back = height;
            else if(height < (downHeight = A[i+1][j]))
                back = 0;
            else
                back = height - downHeight   
            if(j == 0) //left
                var left = height;
            else if(height < (leftHeight = A[i][j-1]))
                var left = 0;
            else
                left = height - leftHeight
            if(j+1 == columns) //right
                right = height;
            else if(height < (rightHeight=A[i][j+1]))
                var right = 0;
            else
                right = height - rightHeight 

            var up 
            var down = up = 1  

            surface += front + back + left + right + up + down
        }
    }
    return surface
}

function surfaceAreaTest(input, expected, num) {

    var actual = surfaceArea(input);//despues buscar la forma de que el input se acomode a la funcion

    if (expected === actual){
        console.log("PASSED TEST N " + num);
    }else{
        console.log("FAILED TEST N "+ num);

        console.log("Input");
        console.log(input);

        console.log("Expected:");
        console.log(expected);

        console.log("Actual:");
        console.log(actual);
        console.log("------");
    }
	console.log("------");
}

num = 0; 
input = [
    [1, 3, 4],
    [2, 2, 3],
    [1, 2, 4]
];
expected = 60;
surfaceAreaTest(input, expected, num);

num = 1;
input = [[1]];
expected = 6;
surfaceAreaTest(input, expected, num);
