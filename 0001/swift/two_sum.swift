/**
Solution uses additional Dictionaory (Hash Table)
Time complexity - linear *O(n)*
Space complexity - linear *O(n)*
*/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var additions = [Int: Int]()
    for (idx, num) in nums.enumerated() {
        additions[target - num] = idx
    }
    for (idx, num) in nums.enumerated() {
        if additions.keys.contains(num) {
            if additions[num] == idx {
                continue
            } else if let addition = additions[num] {
                return [idx, addition]
            }
        }
    }

    return []
}

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    var additions = [Int: Int]()
    for i in 0..<nums.count {
        additions[target - nums[i]] = i
    }
    for i in 0..<nums.count {
        if additions.keys.contains(nums[i]) {
            if additions[nums[i]] == i {
                continue
            } else if let addition = additions[nums[i]] {
                return [i, addition]
            }
        }
    }

    return []
}

func twoSum3(_ nums: [Int], _ target: Int) -> [Int] {
    var additions = [Int: Int]()
    for i in 0..<nums.count {
        let num = nums[i]
        if additions.keys.contains(num) {
            if additions[num] == i {
                continue
            } else if let addition = additions[num] {
                return [i, addition]
            }
        }
        additions[target - num] = i
    }

    return []
}

func twoSum4(_ nums: [Int], _ target: Int) -> [Int] {
    var additions = [Int: Int]()
    for i in 0..<nums.count {
        let num = nums[i]
        if additions.keys.contains(num), let addition = additions[num] {
            return [i, addition]
        }
        additions[target - num] = i
    }

    return []
}

print(twoSum4([2, 7, 11, 15], 9))
print(twoSum4([3, 3], 6))
