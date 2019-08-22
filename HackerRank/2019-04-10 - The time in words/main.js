function timeInWords(h, m) {

    var speech = "";
    var hours_arr = [
        "one",
        "two",
        "three",
        "four",
        "five",
        "six",
        "seven",
        "eight",
        "nine",
        "ten",
        "eleven",
        "twelve"
    ];

    var minutes_arr = [
         "o' clock",
         "one",         
         "two",
         "three",
         "four",
         "five",
         "six",
         "seven",
         "eight",
         "nine",
         "ten",
         "eleven",
         "twelve",
         "thirteen",
         "fourteen",
         "quarter",
         "sixteen",
         "seventeen",
         "eighteen",
         "nineteen",
         "twenty",
         "twenty one",
         "twenty two",
         "twenty three",
         "twenty four",
         "twenty five",
         "twenty six",
         "twenty seven",
         "twenty eight",
         "twenty nine" ,
         "half" 
    ];

    var minutes;

    if (m > 30) {
        minutes = minutes_arr[60 - m];
    }else{
        minutes = minutes_arr[m];
    }    

    if (m != 0 && m != 15 && m != 30 && m !=45)
        if (m == 1)
            minutes += " minute";
        else
            minutes += " minutes";    

    if(m <= 30){
        if(m === 0)
            speech = hours_arr[h-1] + " " + minutes;
        else
            speech = minutes + " past " + hours_arr[h-1];
    }else{
        speech = minutes + " to " + hours_arr[h];
    }

    return speech;
}


function timeInWordsTest(input, expected, num) {

    var actual = timeInWords(input[0],input[1]);//despues buscar la forma de que el input se acomode a la funcion

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

num = 5;
input = [5, 45];
expected = "quarter to six";
timeInWordsTest(input, expected, num);

num = 0;
input = [5, 47];
expected = "thirteen minutes to six";
timeInWordsTest(input, expected, num);


num = 1;
input = [3, 00];
expected = "three o' clock";
timeInWordsTest(input, expected, num);

num = 2;
input = [7, 15];
expected = "quarter past seven"; 
timeInWordsTest(input, expected, num);

num = 3;
input = [5, 30];
expected = "half past five";
timeInWordsTest(input, expected, num);

num = 4;
input = [1, 1];
expected = "one minute past one";
timeInWordsTest(input, expected, num);


