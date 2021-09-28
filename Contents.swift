import UIKit
import Foundation

//exercise 01


func swap<T>(num1:inout T , num2: inout T){
    
    print("Before Swapping the value of num1 is \(num1)");
    print("Before Swapping the value of num2 is \(num2)");
    
    (num1,num2)=(num2,num1)
    
    print("After Swapping the value of num1 is \(num1)");
    print("After Swapping the value of num2 is \(num2)");
    
}
//passing by integer
print("\nPassing by integer")
var intNum1:Int = 0;
var intNum2:Int = 12;
swap(num1: &intNum1, num2: &intNum2)

//passing by double
print("\nPassing by double")
var doubleNum1:Double = 12.4;
var doubleNum2:Double = 13.6;
swap(num1: &doubleNum1, num2: &doubleNum2)

//passing by String
print("\nPassing by string")
var stringNum1:String = "value1";
var stringNum2:String = "value2";
swap(num1: &stringNum1, num2: &stringNum2)


//exercise 02

func sumAvgArray(values:[Int]) ->(Int,Double){
    
    var sum:Int=0;
    var average:Double=0.0;
    
    for i in values{
        sum+=i;
    
    }
    average=Double(sum)/Double(values.count)
    return(sum,average)
        
}

print(sumAvgArray(values: [1,2,3,4]))

//exercise 03
let tempReadings = [
    "Monday" : [12, 25, 10], // name : Array of values representing the temperature during morning, day and evening
    "Tuesday" : [2, 15, 9],
    "Wednesday" : [11, 29, 22],
    "Thursday" : [7, 11, 9],
    "Friday" : [ 16, 22, 20]

]


var averageTempWeek: Double = 0.00;
var highestTempDay: Int = 0;

var allTempTotal: Double = 0.00;
var totalDayOfWeek: Int = 0;
print("\n a) print Average temperature for each day")
for (weekDay, temperature) in tempReadings{
    
    
    let total = Double(temperature.reduce(0, {$0 + $1}))
    print("\nAVERAGE GRADE FOR \(weekDay): " +
        String(format: "%.2f", total / Double(temperature.count)))
    
    allTempTotal += total;
    totalDayOfWeek+=temperature.count;
}

print("\n b) print Average temperature for the week")

print("\nAverage temperature fo the week is \(allTempTotal/Double(totalDayOfWeek))");


for (weekDay, temperature) in tempReadings{
    
    let highest = temperature
        .sorted(by: >)[0]
    
    print("\n Highest temperature for each day \(weekDay): \(highest)" );
}


//exercise 4

var stockValues = [30.50, 10.25, 60.75, 100.25, 45.45, 89.60, 20.50, 55.55, 90.0, 70.0]
//function modify stock Values is to increase the each value by 10.00 in the above array
func modifyStockValues(_ values: inout [Double]){
    for i in values.indices{
        values[i] = values[i]+10.00;
        
    }
    
}

//function modify stock element is to update any single data value of the array
func modifyStockElement(_ values: inout [Double],_ index:Int,_ value:Double){
    if (index>=0&&index<values.count)
    {
        
        values[index]=value
        
    }else{
        
        print("\nPlease print the valid index")
    }
    
}

//check the modifyStockValues
modifyStockValues(&stockValues)
print("\nPrint the array after modify stock values: \(stockValues)")


//check the modifyStockElement
print("\nBefore updating, the value of array is \(stockValues)")
modifyStockElement(&stockValues,0,14.8)

print("\nAfter calling the method, the value of array is \(stockValues)")
