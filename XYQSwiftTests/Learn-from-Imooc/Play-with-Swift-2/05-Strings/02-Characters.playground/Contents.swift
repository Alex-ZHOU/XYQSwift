//
//  5-2 Swift 2.0字符串之Character和Unicode
//  02-Characters.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "02-Characters"
print(str)


for c in str.characters{
    print(c , terminator: " ")
}
print(String())

// Character和String的相互转换
let mark: Character = "!"
//str + mark
str + String(mark)
print(str + String(mark))

// append 相当于 +=
str
str.append(mark)
str

// Characters是基于Unicode的
let englishLetter: Character = "a"
let chineseLetter: Character = "周"
let dog: Character = "🐶"
let coolGuy = "\u{1F60E}"

// String对Unicode的支持
var coolLetters = "abc"
coolLetters.characters.count

var chineseLetters = "慕课网"
chineseLetters.characters.count

var coolGuys = "\u{1F60E}\u{1F60E}\u{1F60E}"
coolGuys.characters.count

var cafe = "café"
var cafe2 = "cafe\u{0301}"
cafe.characters.count
cafe2.characters.count

// String的比较
cafe == cafe2
