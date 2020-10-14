func reverseInt(_ x: Int) -> Int {
    let input = x < 0 ? abs(x) : x
    guard let result = Int32(String(String(input).reversed())) else { return 0 }
    if x < 0 {
        return Int(-result)
    } else {
        return Int(result)
    }
}

func reverseInt2(_ x: Int) -> Int {
    var result: Int32 = 0
    var input = x
    while input != 0 {
        let last: Int32 = Int32(input % 10)

        if x > 0 &&
            (Int32.max / 10 < result || Int32.max - result * 10 < last) {
            return 0

        } else if x < 0 &&
            (Int32.min / 10 > result || Int32.min - result * 10 > last) {
            return 0
        }

        result = result * 10 + last
        input = (input - Int(last)) / 10
    }

    return Int(result)
}

print(reverseInt2(123))
print(reverseInt2(-123))
print(reverseInt2(120))
print(reverseInt2(0))
