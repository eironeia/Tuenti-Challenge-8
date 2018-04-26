import UIKit

/* FUNCTIONS */


func getArrayWithPermutations(arraySize: Int) ->  [[Int]] {
    let size = arraySize - 1
    var result: [[Int]] = []
    
    for i in 1...size {
        var newArray: [Int] = [i]
        for j in 0...size {
            if i != j {
                newArray += [j]
            }
        }
        
        result += [newArray]
        
    }
    
    for i in (1...size).reversed() {
        var newArray: [Int] = [i]
        for j in (0...size).reversed() {
            if i != j {
                newArray += [j]
            }
        }
        
        result += [newArray]
    }
    return result
}


func getValueOnBaseN(number: [Int], base: Int) -> Double {
    let numbersCount = number.count
    
    var result: Double = 0
    var index: Int = 0
    
    for i in (0...numbersCount - 1).reversed() {
        let number = number[i]
        if number != 0 {
            let numberInBase = Double((pow(Decimal(base), index) as NSDecimalNumber))*Double(number)
            result += numberInBase
        }
        index += 1
    }
    
    return result
}


/* CODE */

func getHiddenNumbers(inputValues: [String]) {
    
    var caseNumber: Int = 1

    for input in inputValues {

        let arrayWithNumbers: [[Int]] = getArrayWithPermutations(arraySize: input.count)

        var minValue: Double!
        var maxValue: Double!

        for permutation in arrayWithNumbers {
            let value = getValueOnBaseN(number: permutation, base: input.count)
            if arrayWithNumbers.first == permutation {
                minValue = value
                maxValue = value
            }
            else {
                if maxValue < value { maxValue = value }
                if minValue > value { minValue = value }
            }
        }

        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 100
        let string = numberFormatter.string(for: maxValue - minValue)!
        
        print("Case #\(caseNumber): \(string.replacingOccurrences(of: ",", with: ""))")
        caseNumber += 1
    }
}

getHiddenNumbers(inputValues: ["cojhn", "qkflsczuantb", "qswagdzcpxe", "dxwupsqhknfciozgbrtjma", "wjxgnyzvbakimqfdt", "qmyf", "ma", "mvongxtqdypsbfjzlhruc", "bfujhpnxdgyilowcrqkm", "mpuzgkwe", "vd", "bxdpcirwkvanzmefogsyj", "alejmqt", "urmnskcjhl", "ogqmnte", "mqoldkhwfryjutpv", "nupolktzdmsv", "kvxoecmgnrzuayptjidbwl", "cyafdkgivrxpeujhozbm", "htfdxycnkserjiz", "kxypedsbvhzgfuoqi", "htlfusmrvadckgenxiwbzqj", "qcjktbhywnoxslrfauzdepmvg", "obewgiahkctxmlpsjfnv", "fickmtolqndzwvpasreuxb", "hxptymkzgbwanvcjedfqoiursl", "kogxc", "sgomyxhda", "lkspxtcweziybaqovhurjfgd", "xiokcnydbmjqvu", "yxkdanuzwmlerihjcvqpfstb", "yneltcsbvwqukdagfjmzx", "ofnhgquxiyvwck", "ywxzmuvalbscdk", "sdp", "kozubhaepcw", "nbiqztdj", "saonctfgjdbkqu", "yqomxjedrztbwislvuanphcf", "lchrn", "hmovs", "dfpxhelagvcmoyzbukr", "bwmfn", "uv", "ukbvzfgsnlhxe", "rpfhaxoisblezqwydgcuk", "cmnjgh", "sjx", "ivn", "kxqwvrlsthfjbngcd", "fdx", "qkaublyrvpdx", "qzcmy", "gpjkilhxnou", "lxocdniryftqea", "fsro", "zmajgdihurkoblscnwpqfvxye", "ewimuqoxrtcbgf", "hqcvrbkmgeindyfszjupaolt", "rjstoynlmuvhgebqcpfx", "ghymxufkzrdnolitvwep", "psvwmuxthdoejcbgkqif", "fduvzonmhiglrbcqpetjkx", "bnxlckrjhvowmzid", "eqy", "uwg", "ghitqjnslvcpuzwrxbyod", "irkwajhnfpmezdgsvutlcoq", "ql", "vclwinjbteuszfmydokraxpqh", "swocbamnhvkuxltrip", "dgjyup", "ewudxyjlrbs", "xmkiawcrfjvhg", "rewfybacgpdhvkmqiun", "nizrgevt", "edxqvj", "rzgbp", "kxehpdfya", "iasdkolztwfgm", "lgijk", "gyoxqfrhs", "agjdluecbohtwqkmxrfpiv", "zjgtlyuiwnvkbefrpax", "dc", "hckpivxoarlsbujfeywgmqtd", "bwun", "xsiyt", "vwygmtho", "kjidpnqsmxahglocbztfeuwyr", "ialwcbtexghnqmkrdz", "qihwso", "mnsebatdxzol", "xifhogvmbndztueqpalsyj", "ry", "emvdqkflowijgytcxzaubsr", "jhbysenmzoqvluxfpcdw", "lipdnmqecousxfrjv", "xdzerwgqf", "ctubdnxerwiplqgfovahzjyksm"])

