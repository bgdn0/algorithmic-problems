func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var start = 0
    var end = numbers.count-1
    while start != end {
        let sum = numbers[start] + numbers[end]
        if sum == target {
            return [start+1, end+1]
        } else if sum < target {
            start += 1
        } else {
            end -= 1
        }
    }

    return []
}

print(twoSum([2, 7, 11, 15], 9))
print(twoSum([2, 3, 4], 6))
print(twoSum([-1, 0], -1))

