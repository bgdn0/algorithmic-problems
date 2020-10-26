import Foundation

func isPalindrome(_ x: Int) -> Bool {
    let input = String(x)
    for i in 0...input.count/2 {
        if input[input.index(input.startIndex, offsetBy: i)] != input[input.index(input.startIndex, offsetBy: input.count - 1 - i)] {
            return false
        }
    }
    return true
 }

func isPalindrome2(_ x: Int) -> Bool {
    guard x >= 0 else { return false }

    var inputArr: [Int] = []
    var input = x
    while input > 0 {
        let last = input % 10
        inputArr.append(last)
        input = (input - last) / 10
    }

    for i in 0..<inputArr.count {
        if inputArr[i] != inputArr[inputArr.count-1 - i] {
            return false
        }
    }
    return true
}

func isPalindrome3(_ x: Int) -> Bool {
    guard x >= 0  else { return false }
    if x % 10 == 0 && x > 0 { return false }

    var original = x
    var reversed = 0
    while original > reversed {
        reversed = reversed * 10 + original % 10
        original /= 10
    }

    return original == reversed || original == reversed/10
}

 let tests: [Int] = [
     10,
     121,
     -121,
     10,
     -101,
     1000021,
     1200021,
     120021,
 ]

 for test in tests {
     print("\(test) is palindrom: \(isPalindrome3(test))")
 }
