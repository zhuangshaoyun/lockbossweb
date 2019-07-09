import UIKit

var str = "Hello, playground"

print(str)
print("值为\(str)");
var stringA = String("hhehda");
print(type(of: stringA));
//长度
print(stringA.count);
let char1:Character = "a";


var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

let dictKeys = [Int](someDict.keys)
let dictValues = [String](someDict.values)

print("输出字典的键(key)")

for (key) in dictKeys {
    print("\(key)")
}

print("输出字典的值(value)")

for (value) in dictValues {
    print("\(value)")
}

func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    print("多次调用我只运行一次哦 ~~~~");
    var runningTotal = 0;
    
    func incrementor() -> Int {
        runningTotal += amount
        
        print(runningTotal)
        print(amount)
        return runningTotal
    }
    return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)

// 返回的值为10
print(incrementByTen())

// 返回的值为20
print(incrementByTen())

// 返回的值为30
print(incrementByTen())
