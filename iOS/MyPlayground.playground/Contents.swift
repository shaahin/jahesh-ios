//: Playground - noun: a place where people can play
import UIKit

var pi: Double?
pi = 13
pi = nil
pi = 43.2
pi = nil
pi = 3.14

let r = 13.2

if pi != nil
{
    let m = r * r * pi!
}
else {
    print("pi is nil")
}

if let a = pi
{
    let m = r * r * a
}
else
{
    print("pi is nil")
}

if let _ = pi {
    let res = "pi is present"
}else{
    print("pi is nil")
}

var text: String? = "hello world"
text = nil
let result = text?.contains("world")

let name = "ali"
let age = 16
//let strAge = String(

var message = "Hello " + name + ", you are " + age.description + " years old"

message = "Hello \(name), you're \(age * 2) years old!"





//let finalResult: Bool = result!
//print("result is " + result)

func calculate(quadraticEquationWithA param1: Int, param2: Int, andC param3: Int) -> Int
{
    return param1 + param2 + param3
}


//calculatequadraticEquationWithA(_ 12, param2: 42 , andC: 12)


func calculateQuadraticEquationWith( a: Int, b: Int, and c: Int) -> Int
{
    return 0
}






func application(didEnterBackground application: UIApplication) {
    
}






