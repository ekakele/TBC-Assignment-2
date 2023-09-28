import UIKit

//Lecture 3 - Swift Basics & Control Flow

print("========== Task #1 ==========")
/*
 შექმენით ორი Int ტიპის ცვლადი, მიანიჭეთ მათ მნიშვნელობა და დაბეჭდეთ მათი ჯამი.
 */
let a: Int = 5
let b: Int = 3
print(a + b)


print("========== Task #2 ==========")
/*
 შექმენით Int ტიპის ცვლადი, მიანიჭეთ მას მნიშვნელობა, და შეამოწმეთ არის თუ არა ეს რიცხვი 10-ზე მეტი და 20-ზე ნაკლები ან ტოლი, 20-ზე მეტი და 50-ზე ნაკლები ან ტოლი, 50-ზე მეტი და 100-ზე ნაკლები ან ტოლი, 100-ზე მეტი და შედეგი დაბეჭდეთ.
 */
let numberToCheck: Int = 25
if numberToCheck > 10 && numberToCheck <= 20 {
    print("Your number is in the range of 10 to 20")
} else if numberToCheck > 20 && numberToCheck <= 50 {
    print("Your number is in the range of 20 to 50")
} else if numberToCheck > 50 && numberToCheck <= 100 {
    print("Your number is in the range of 50 to 100")
} else {
    print("Your number is out of range.")
}


print("========== Task #3 ==========")
/*
 for-in ციკლის გამოყენებით, დაბეჭდეთ რიცხვები 1-იდან 20-ამდე. რიცხვები ეწეროს ერთ ხაზზე, გამოყოფილი იყოს სფეისებით. შედეგი: 1 2 3 4...
 */
//solution #1
var numberCollection = ""
//print numbers from 1 to 20 (inclusive)
for numbers in 1...20 {
    numberCollection += "\(numbers) " // separated with spaces
}
print(numberCollection)


//solution #2
for numbers in 1...20 {
    // writes the textual representations of the given items
    print(numbers, terminator: " ") // separated with spaces
}
print()


print("========== Task #4 ==========")
/* while ციკლის გამოყენებით, 1-იდან 100-ამდე დაბეჭდეთ ყველა კენტი რიცხვის ჯამი.
 */
//solution #1
var numberToScan: Int = 1
var sumOfOdds = 0

while numberToScan < 100 {
    // check if the number is odd = not divisable on 2 without remain
    if numberToScan % 2 != 0 {
        sumOfOdds += numberToScan
    }
    numberToScan += 1
}
print(sumOfOdds)


//solution #2
var numberToScan2: Int = 0
var sumOfOdds2 = 0

while numberToScan2 < 100 {
    numberToScan2 += 1
    // check if the number is even, if so, continue (skip this number, don't add to the sumOfOdds)
    if numberToScan2 % 2 == 0 {
        continue
    }
    sumOfOdds2 += numberToScan2
}
print(sumOfOdds2)


print("========== Task #5 ==========")
/*
 შექმენით String ტიპის ცვლადი, და ციკლის გამოყენებით დაარევერსეთ ეს ცვლადი, მაგ: თუ გვაქვს TBC Academy უნდა მივიღოთ ymedacA CBT.
 */
//solution #1
let originalString: String = "WELCOME"
var reversedString = ""
for char in originalString.reversed() {
    reversedString.append(char)
}
print(reversedString)

//solution #2
let originalString1: String = "GOODBYE"
var reversedString1 = ""
for char in originalString1 {
    reversedString1 = "\(char)" + reversedString1 // new char first + previously taken chars
}
print(reversedString1)



print("========== Task #6 ==========")
/*
 დაბეჭდეთ ყველა ორნიშნა რიცხვი რომელიც ერთნაირი ციფრებით არის შედგენილი.
 */
//solution #1
for i in 10..<100 {
    var firstDigit = i / 10 // get the first digit of the matching number
    var secondDigit = i % 10 // get the second (remainder) digit of the matching number
    if firstDigit == secondDigit {
        print(i, terminator: " ")
    }
}
print()

//solution #2
for i in 10..<100 {
    if  i % 11 == 0 {
        print(i, terminator: " ")
    }
}
print()

//solution #3
for i in 1...9 {
    print (i * 11,terminator: " ")
}
print()

//solution #4
for i in 1...9 {
    print ((i * 10 + i),terminator: " ")
}
print()


print("========== Task #7 ==========")
/*
 გაქვს 9 ნიშნა რიცხვი და დაბეჭდე შებრუნებული რიცხვი.
 */
var nineDigitNumber = 123456789
let numberString = String(nineDigitNumber) // convert Int to String
let reversedString2 = String(numberString.reversed()) // crate new string and reverse it
// check for code safety:
if let reversedNumber = Int(reversedString2) {
    print(reversedNumber)
} else {
    print("Error")
}


print("========== Task #8 ==========")
/*
 შექმენით bool-ეან ცვლადი, მაგალითად: isNumberFound და while loop-ის გამოყენებით იპოვეთ პირველი რიცხვი რომელიც იყოფა 5-ზეც და 9-ზეც ერთდროულად. 1-იდან დაიწყეთ ათვლა.
 */
var isNumberFound: Bool = false
var number = 1
// unless the value is true (!isNumberFound = true), keep going
while !isNumberFound {
    // check if the number is devidable on 5 and 9 without remains
    if number % 5 == 0 && number % 9 == 0 {
        // then the condition is met = true
        isNumberFound = true
        print("The first number divisible by 5 and 9 is: \(number)")
    }
    number += 1 // increase for each iteration
}


print("========== Task #9 ==========")
/*
 შექმენი String ცვლადი მაგალითად month, რომელსაც მიანიჭებ თვის მნიშვნელობას, მაგალითად: "march" და switch statement-ის გამოყენებით დაბეჭდეთ წელიწადის რა დროა.
 */
let month: String = "March"
switch month {
case "March", "April", "May":
    print("Spring")
case "June", "July", "August":
    print("Summer")
case "September", "Octomber", "November":
    print("Automn")
case "December", "January", "February":
    print("Winter")
default:
    print("Error")
}



print("========== Task #10 ==========")
/*
 while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."
 */
var colorNumber = 1
while true {
    switch colorNumber {
    case 1:
        print("🔴")
    case 2:
        print("🌕")
    case 3:
        print("🟢")
        colorNumber = 0
    default: break
    }
    colorNumber += 1
}

