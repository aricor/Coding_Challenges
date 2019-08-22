

function cavityMap(grid) {
    
    width = grid[0].length;
    height = grid.length;

    for (var j = 1; j < height - 1; j++){
        for (var i = 1; i < width - 1; i++){               

            up = grid[i][j - 1];
            right = grid[i + 1][j];
            down = grid[i][j + 1];
            left = grid[i - 1][j];
            position = grid[i][j];
                
            if (
                up < position && //centro - arriba
                right < position && //centro - derecha
                down < position && //centro - abajo
                left < position //centro - izquierda  
                && !(
                    up === "X" ||
                    right === "X"||
                    down === "X"||
                    left === "X"
                )
            )
            grid[i][j] = "X" ;           
                                        
        }
    }

    var a = [
        ["1112"],
        ["1X12"],
        ["18X2"],
        ["1234"]
    ]

    return grid;
}



function cavityMapTest(input, expected, num) {

    var actual = cavityMap(input);//despues buscar la forma de que el input se acomode a la funcion

    console.log("------");

    for(i = 0; i < expected.length; i++){
        for( j = 0 ; expected[i].length; j++){
            if (expected[i][j] !== actual[i][j]) {
                console.log("FAILED TEST N " + num);

                console.log("Input");
                console.log(input);

                console.log("Expected:");
                console.log(expected);

                console.log("Actual:");
                console.log(actual);

                return 0 ;
            }
        }        
    }

    if (expected === actual){
        console.log("PASSED TEST N " + num);
        return 0;
    }  
}

num = 0; 
input = [
[1,1,1,2],
[1,9,1,2],
[1,8,9,2],
[1,2,3,4]
];
expected = [
    ["1112"],
    ["1X12"],
    ["18X2"],
    ["1234"],
];
cavityMapTest(input, expected, num);

num = 1;
input = [
    [1, 2],
    [1, 2]  
];
expected = [
    ["1 2"],
    ["1 2"],
];
cavityMapTest(input, expected, num);

num = 2;
input = [
    [989],
    [191],
    [111]
];

expected = [
    ["989"],
    ["1X1"],
    ["111"],
];
cavityMapTest(input, expected, num);