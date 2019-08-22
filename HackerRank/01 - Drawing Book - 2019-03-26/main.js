console.log("Helloword");

function pageCount(n, p) {
    //n=longitude of the book

    //p=page to find

    //calculate the amount of pages from the front -> f = p / 2
    var f = Math.floor(p / 2);    

    //calculate the amount of pages from the back -> b = (n-p) /2
    var b;
    n%2 == 0 && (n-p)==1? 
        b = 1 : 
        b = Math.floor((n - p ) / 2);  
          
    //find the minimin between f and p
    var r = Math.min(f ,  b)

    console.log("Front:");
    console.log(f);
    //show     
    console.log("Back:");
    console.log(b);
    return r;

    
}


function pageCountTest(input , expected){

    console.log("------")

    n = input[0]
    console.log("Book length:")
    console.log(n);

    p = input[1]
    console.log("Page in question:")
    console.log(p);

    console.log("Expected:")
    console.log(expected);

    var actual = pageCount(n,p);
    console.log("Actual:")
    console.log(actual);
}

input = [6,2];
expected = 1;
pageCountTest(input,expected);

input = [5, 4];
expected = 0;
pageCountTest(input, expected);

input = [6, 5];
expected = 1;
pageCountTest(input, expected);