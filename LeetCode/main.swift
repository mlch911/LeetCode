//
//  main.swift
//  LeetCode
//
//  Created by mlch911 on 2021/5/19.
//

import Foundation

class Solution {
	// 1685. 有序数组中差绝对值之和
	func getSumAbsoluteDifferences(_ nums: [Int]) -> [Int] {
//		var numbers = [Int: Int]()
//		nums.forEach {
//			numbers[$0] = (numbers[$0] ?? 0) + 1
//		}
//		return nums.map { i -> Int in
//			numbers.filter({ $0.key != i }).reduce(0, { $0 + abs($1.key - i) * $1.value })
//		}
		
//		nums.map({ i in
//			nums.drop(while: { $0 == i }).reduce(0, { $0 + abs($1.distance(to: i)) })
//		})
		
		return nums.enumerated().map({ index, i in
			nums.enumerated().reduce(0) {
				$0 + ($1.offset > index ? $1.element : -$1.element)
			} + i * (2 * index - nums.count)
		})
	}
}

let startTime = CFAbsoluteTimeGetCurrent()
 
print(Solution().getSumAbsoluteDifferences([1,4,6,8,10]))

let endTime = CFAbsoluteTimeGetCurrent()
 
print("代码执行时长：", endTime - startTime)

