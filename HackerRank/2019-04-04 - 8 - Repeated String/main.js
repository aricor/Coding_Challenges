function repeatedString(s, n) {

    var _occurrences = occurrences(s);
    var strLong = s.length;
    var res = Math.floor(n / strLong) * _occurrences;
    var remainder = n % strLong;
    if( remainder !== 0){        
        var strTrimmed = s.substring(0,remainder) 
        res += occurrences(strTrimmed);        
    }    
    return res;
}

function occurrences(str){
    var count;
    for (var i = count = 0; i < str.length; count += ('a' === str[i++]));
    return count;
}

function repeatedStringTest(input, expected, num) {

    var actual = repeatedString(input[0],input[1]);//despues buscar la forma de que el input se acomode a la funcion

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

//Test Case 2
num = 2;
input = ['epsxyyflvrrrxzvnoenvpegvuonodjoxfwdmcvwctmekpsnamchznsoxaklzjgrqruyzavshfbmuhdwwmpbkwcuomqhiyvuztwvq', 549382313570]
expected = 16481469408;
repeatedStringTest(input, expected, num);

//Test Case 0 ---> nombre del test case en hackerrank
num = 0; //test case en mi maquina---> son nros diferentes, en este caso iguales, el caso cero siempre va a coincidir
input = ['aba',10]
expected = 7;
repeatedStringTest(input, expected, num);

//Test Case 1
num = 1;
input = ['a', 1000000000000]
expected = 1000000000000;
repeatedStringTest(input, expected, num);

