public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    var description: String {
        var result = "[\(val)"
        var curNode = self
        while let node = curNode.next {
            result += ",\(node.val)"
            curNode = node
        }
        result += "]"
        return result
    }

    func reversed() -> ListNode {
        var count = 0
        var tail: ListNode = self
        while tail.next != nil {
            count += 1
            tail = tail.next!
        }
        var head: ListNode? = self
        for _ in 0..<count {
            let tmp = head?.next
            head?.next = tail.next
            tail.next = head
            head = tmp
        }
        return tail
    }
}

    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var addition = 0
        var curNode1: ListNode? = l1
        var curNode2: ListNode? = l2
        var result: ListNode?
        var tail: ListNode?
        while curNode1 != nil || curNode2 != nil || addition == 1 {
            var value = (curNode1?.val ?? 0) + (curNode2?.val ?? 0) + addition
            if value >= 10 {
                value %= 10
                addition = 1
            } else {
                addition = 0
            }

            let node = ListNode(value)
            if result == nil {
                result = node
            }
            tail?.next = node
            tail = node
            curNode1 = curNode1?.next
            curNode2 = curNode2?.next
        }

        return result
    }

func toList(_ number: Int) -> ListNode {
    let head = ListNode(number % 10)
    var remain = number / 10
    var curNode = head
    while remain > 0 {
        let next = ListNode(remain % 10)
        curNode.next = next
        curNode = next
        remain /= 10
    }
    return head
}

print(addTwoNumbers(toList(342), toList(465))?.description ?? "")
print(addTwoNumbers(toList(0), toList(0))?.description ?? "")
print(addTwoNumbers(toList(9999999), toList(9999))?.description ?? "")

print(addTwoNumbers(toList(942), toList(9465))?.description ?? "")
print(toList(942).reversed().description)
print(toList(9465).reversed().description)

// [2,4,9]
// [5,6,4,9]
// [7,0,4,0,1]
