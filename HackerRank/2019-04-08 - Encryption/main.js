// console.log("Hello World!")

function sdfgencryption(s) {
    //encontrar rows y columns;
    var long = s.length ;
    var sqrt = Math.sqrt(long);
    var columns = Math.ceil(sqrt);
    var rows = Math.floor(sqrt);

    if(columns * rows < long)
        rows = columns;     

    var i = 0, j = 0, k = 0;

    var row = [], column = [[]];

    //separar el mensaje por columnas
     for(i = 0 ; i < rows ; i++){
        for(j = 0 ; j < columns ; j++){               
            row[j] = s[k];
            k++;
            if(k >= long){break;}
        }
        column.push(row);
        row = new Array();
     }

    123123;
    //reconstruir el mensaje encriptado

    var result = "",k = 0;
    for(i = 0; i < rows+1; i++){  
        for(j=1; j < columns; j++)  {              
            result += column[j][i] + ",";
            k++; 
            // if()           
            if( k > long){break};
        }
        result += " ";
    }
    result = result.replace(/,/g, '');;
    return result;
}

function encryption(s) {
    var rows = Math.floor(Math.sqrt(s.length));
    var cols = Math.ceil(Math.sqrt(s.length));
    var encrypt_s = [];

    if (rows * cols < s.length) { rows++; }

    for (var i = 0; i < cols; i++) {
        for (var j = 0; j < rows; j++) {
            if (i + j * cols < s.length) {
                encrypt_s.push(s[i + j * cols]);
            }
        }
        encrypt_s.push(" ");
    }

    return encrypt_s.toString().replace(/,/g, '');
}



function encryptionTest(input, expected, num) {

    var actual = encryption(input);//despues buscar la forma de que el input se acomode a la funcion

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

num = 1;
input = "feedthedog";
expected = "fto ehg ee dd";
encryptionTest(input, expected, num);

//Test Case 0 ---> nombre del test case en hackerrank
num = 0; //test case en mi maquina---> son nros diferentes, en este caso iguales, el caso cero siempre va a coincidir
input = "haveaniceday";
expected = "hae and via ecy";
encryptionTest(input, expected, num);

num = 2;
input = "chillout";
expected = "clu hlt io"; 
encryptionTest(input, expected, num);

// num = 3;
// input = "ifamanwasmeanttostayonthegroundgodwouldhavegiveusroots";
// expected = "imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau";
// encryptionTest(input, expected, num);
// //Cuidado con este test case