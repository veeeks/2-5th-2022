//cerner_2tothe5th_2022
import Foundation
import Glibc
var Tasklist: [String] = [""]
var num1=9
while(num1 != 0 ){
print("Please enter Option \n 1 - Add new task \n 2- Remove from tasks list \n 3- Display \n 0-Exit")
var num1 = Int(readLine()!)!
if( num1 == 1){
    print("Enter Task:")
    var task = readLine()!
    print("Enter priority  (Between 1 and \(Tasklist.count)): ")
    var num2 = Int(readLine()!)!
    Tasklist.insert(task, at: num2)    
}
if(num1 == 2){
    print("Enter task to be removed")
    var num3 = Int(readLine()!)!
    Tasklist.remove(at:num3)
}
if(num1==3){
    for item in Tasklist {
        print(item)
    }
}
if(num1 == 0){
    exit(0)
    }
}
