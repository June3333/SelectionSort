var OriginalArray: [String] = []
while true {
    if let nextWord = readLine(), nextWord != "" {
        OriginalArray.append(nextWord)
    } else {
        break
    }
}


var unsortedIntegers: [Double] = []

//convert words to numbers
for word in OriginalArray {
    let word = word.lowercased()
    var wordToInt = "0."
    for letter in word {
        switch letter {
        case "a":
            wordToInt += "01"
        case "b":
            wordToInt += "02"
        case "c":
            wordToInt += "03"
        case "d":
            wordToInt += "04"
        case "e":
            wordToInt += "05"
        case "f":
            wordToInt += "06"
        case "g":
            wordToInt += "07"
        case "h":
            wordToInt += "08"
        case "i":
            wordToInt += "09"
        case "j":
            wordToInt += "10"
        case "k":
            wordToInt += "11"
        case "l":
            wordToInt += "12"
        case "m":
            wordToInt += "13"
        case "n":
            wordToInt += "14"
        case "o":
            wordToInt += "15"
        case "p":
            wordToInt += "16"
        case "q":
            wordToInt += "17"
        case "r":
            wordToInt += "18"
        case "s":
            wordToInt += "19"
        case "t":
            wordToInt += "20"
        case "u":
            wordToInt += "21"
        case "v":
            wordToInt += "22"
        case "w":
            wordToInt += "23"
        case "x":
            wordToInt += "24"
        case "y":
            wordToInt += "25"
        case "z":
            wordToInt += "26"
        default:
            wordToInt += ""
        }        
    }    
    unsortedIntegers.append(Double(wordToInt)!)       
}

var list = unsortedIntegers
var pass = 0

var index = 0
while pass < list.count - 1 {
    var swaps = 0       
    
    //finding smallest
    var smallestIndex = index
    for i in index  ..< list.count {
        if list[i] < list[smallestIndex] {
            smallestIndex = i
        }    
    }

    //swapping if smaller
    if list[smallestIndex] <= list[index] {
        list.swapAt(smallestIndex, index)
        swaps += 1
    }
    
    pass += 1
    index += 1
}
    
var SortedWords: [String] = []
//convert numbers to words
for number in list {
    let IntInStr = String(number)
    var twoInt = ""
    var IntToWord = ""
    for letter in IntInStr {
        if twoInt.count != 2 {
            twoInt += String(letter)            
        }
        if twoInt.count == 2 {
            switch twoInt {
            case "01":
                IntToWord += "a"
            case "02":
                IntToWord += "b"
            case "03":
                IntToWord += "c"
            case "04":
                IntToWord += "d"
            case "05":
                IntToWord += "e"
            case "06":
                IntToWord += "f"
            case "07":
                IntToWord += "g"
            case "08":
                IntToWord += "h"
            case "09":
                IntToWord += "i"
            case "10":
                IntToWord += "j"
            case "11":
                IntToWord += "k"
            case "12":
                IntToWord += "l"
            case "13":
                IntToWord += "m"
            case "14":
                IntToWord += "n"
            case "15":
                IntToWord += "o"
            case "16":
                IntToWord += "p"
            case "17":
                IntToWord += "q"
            case "18":
                IntToWord += "r"
            case "19":
                IntToWord += "s"
            case "20":
                IntToWord += "t"
            case "21":
                IntToWord += "u"
            case "22":
                IntToWord += "v"
            case "23":
                IntToWord += "w"
            case "24":
                IntToWord += "x"
            case "25":
                IntToWord += "y"
            case "26":
                IntToWord += "z"
            default:
                IntToWord += ""
            }
            twoInt = ""
        }
    }
    SortedWords.append(IntToWord)
}
//print(SortedWords)
