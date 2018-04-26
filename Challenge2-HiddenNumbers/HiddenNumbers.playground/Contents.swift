import UIKit

/* FUNCTIONS */

func personalPow(number: BigInt, exponent: BigInt) -> BigInt {
    if exponent == 0 {
        return 1
    }
    var result: BigInt = number
    for _ in 1..<exponent {
        result *= number
    }
    return result
}



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


func getValueOnBaseN(number: [Int], base: Int) -> BigInt {
    let numbersCount = number.count
    
    var result: BigInt = 0
    var index: Int = 0
    
    for i in (0...numbersCount - 1).reversed() {
        let number = number[i]
        if number != 0 {
            let numberInBase = personalPow(number: BigInt(base), exponent: BigInt(index))*BigInt(number)
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
        
        var minValue: BigInt!
        var maxValue: BigInt!
        
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
        
        print("Case #\(caseNumber): \(maxValue - minValue)")
        caseNumber += 1
    }
}

getHiddenNumbers(inputValues: ["jwfcpmdenqbvxorizhulgksat", "hjvozn", "uiobk", "plwuhbfrtkes", "zqox", "jfvuthnagcsimrokywd", "tsfruqajzexckhgynpdobvlm", "qbcirnuvtwkexoj", "gtpzraysxmcfkvhnb", "nipfhzbwuvrecmgtaqlkoxy", "efodlnhtiqarbmkwxczj", "wormfksluxtzcydqaijg", "oljintegfdkbumqrxhspazvw", "dxucftlqjvohmwsb", "hkmiduavoxyec", "qlktdavurpiso", "ktbucrvdgwynqszipf", "xaztiblwqskmhdfyunvr", "pqtxbonkilsmea", "ws", "zwxjcy", "ulvegwyrxiqtcskoapzmjnhdbf", "pdtohxgniclryve", "xsha", "xujmwbeslgitzdarycfqv", "qsfwivcg", "nazmykvulhqfcib", "bshinyzjmektvcg", "oitcjxauylergvskhbznwq", "auqhzmrtlo", "yuwarfjmptcviqkdzel", "gjkpxebnz", "ozvys", "tkbidurmanoyhvxqj", "rcxhedbnlgfak", "ojbkdqwnivmzet", "tixakmhqjcsfpedbzrwn", "qkephgbczxfsranvt", "cnwpzjlxbaqhryeugdmtikfovs", "lmkaxpvbyijz", "cdyoigmxutasbfvkrlwehz", "tmer", "eudbozjlchisqgpknyvmtafwr", "zawrnmkcbdgfhpluqet", "mpsut", "mxzcygwnrpuaotsdlkivbheqf", "bwuvymctjexzdrfs", "wbvhgmcflxzn", "teslkhzmnjgibfwpcqduyvaxor", "ewxz", "pwvxntoai", "elwhtyrvqfmpgz", "vfiydkar", "fnhyaiwtjoxgembsrupzdlqcvk", "cljxtyrdo", "vlrbwzptfisk", "pqntureljhvikdmbxg", "dkvnjwsgxqrulz", "mqhyijz", "updvi", "hbdzmfnxuwqj", "sdykl", "pukzqniywvolhgcdebajstr", "xvqgbnshyupkwmoizdjlre", "csuvodngkwiahl", "wq", "ljnbtkiqfgczsd", "qkwlunyxevfjoaszcmi", "ofrzsnqukgvwe", "szmrntyvigcawqopxbhejlu", "ce", "qvnmbityswzpxfelcohak", "gnfrhcy", "ftwzblayuxijvdonc", "gypfiljatcudnm", "nubvfqhxzrimogjkeslapytdw", "fjmpxlhkez", "mzpgijtqrbfseo", "ulrdqw", "yozrhe", "ubmavqfnjodzhpx", "wgylvnj", "fovchzbiemyxrgqjawdlpns", "beozunygwihlratscmfjkqd", "yewzxbmnthapqv", "ezjmlscdwikqfgupx", "alqeo", "nphegx", "cwuylarfqe", "ngmuosltaejxckqhvbyrdfizwp", "eslbuacxyijqtf", "dvetmwualypksczgqjrobhnfx", "cyhqsfdrxpujzgwmvn", "eirayhztqfbmskc", "yfagtxihukpjnsodevblzwq", "ivbxc", "sgdreauvbwz", "hxcqonkefgayv", "dcogtmhv", "cwdihyenflzskrqatbgp"])

