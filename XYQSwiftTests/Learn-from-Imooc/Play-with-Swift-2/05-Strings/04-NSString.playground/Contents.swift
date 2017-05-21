//
//  5-4 Swift 2.0字符串之as 和 NSString
//  04-NSString.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "04-NSString"
print(str)


var str2 = "Hello,swift"
// 大小写转换
// 大写
str2.uppercased()
// 小写
str2.lowercased()
// 单词开头大写
str2.capitalized

// 使用String的方法
// 包含
str2.contains("Hello")
// 开头
str2.hasPrefix("Hello")
// 结尾
str2.hasSuffix("swift")

// String的缺点
let s = "one third is \(1.0/3.0)"
print(s)

// 注意：现在Swift中的String和OC中的NSString之间的界限越来越小，如使用format初始化一个String，在Swift2中已经可以了。具体代码如下：
let ss = String(format: "one third is %.2f", 1.0/3.0)

// as String
let s2 = NSString(format: "one third is %.2f😀", 1.0/3.0) as String
print(s2)

// NSString
var s3:NSString = "one third is 0.33😀"
//swift2: s3.substringToIndex(3)
s3.substring(to:3)
//swift2: s3.substringFromIndex(4)
s3.substring(from: 4)
//swift2: s3.substringWithRange(NSMakeRange(4, 5))
s3.substring(with: NSMakeRange(4, 5))

// String和NSString的不同
let s4 = "😀😀😀"
let s5:NSString = "😀😀😀"
s4.characters.count
s5.length

let s6 = "   --- Hello -----    " as NSString
//swift2: s6.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: " -"))
s6.trimmingCharacters(in: CharacterSet(charactersIn: " -"))
//swift2:let range = s6.rangeOfString("ll")
let range = s6.range(of: "ll")
range.location
range.length
//swift2: s6.stringByReplacingOccurrencesOfString("He", withString: "Apo")
s6.replacingOccurrences(of: "He", with: "Apo")
