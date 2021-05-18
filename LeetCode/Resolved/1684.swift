//
//  1684.swift
//  LeetCode
//
//  Created by mlch911 on 2021/5/19.
//

import Foundation

// 1684. 统计一致字符串的数目
func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
	words.filter({
		$0.first(where: { character -> Bool in
			!allowed.contains(character)
		}) == nil
	}).count
}
