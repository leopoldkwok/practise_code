function getAverage(a,b, c, d, e, f) {
    
    var average = (a + b + c + d + e + f) / 2;
    console.log(average);
    return average;
}

var myResult = getAverage(7,8, 9, 10, 11, 12);
console.log("the average is " + myResult);