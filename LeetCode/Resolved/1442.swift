//
//  1442.swift
//  LeetCode
//
//  Created by mlch911 on 2021/5/19.
//

import Foundation

// 1442. 形成两个异或相等数组的三元组数目
func countTriplets(_ arr: [Int]) -> Int {
	guard arr.count >= 2 else { return 0 }
	var count = 0
	for i in 0 ..< arr.count - 1 {
		for j in i + 1 ..< arr.count {
			if arr[i...j].reduce(0, { $0 ^ $1 }) == 0 {
				count += j - i
			}
		}
	}
	return count
}
