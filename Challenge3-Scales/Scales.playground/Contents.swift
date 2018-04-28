//: Playground - noun: a place where people can play

import UIKit
import Foundation

var simplification: Dictionary<String, String> = ["Ab": "G#",
                                                  "Bb": "A#",
                                                  "Cb": "B",
                                                  "Db": "C#",
                                                  "Eb": "D#",
                                                  "Fb": "E",
                                                  "Gb": "F#",
                                                  "B#": "C",
                                                  "E#": "F"]


var scales: Dictionary<String, [String]> = ["MA": ["A", "B", "C#", "D", "E", "F#", "G#"],
                                            "MA#": ["A#", "C", "D", "D#", "F", "G", "A"],
                                            "MB": ["B", "C#", "D#", "E", "F#", "G#", "A#"],
                                            "MC": ["C", "D", "E", "F", "G", "A", "B"],
                                            "MC#": ["C#", "D#", "F", "F#", "G#", "A#", "C"],
                                            "MD": ["D", "E", "F#", "G", "A", "B", "C#"],
                                            "MD#": ["D#", "F", "G", "G#", "A#", "C", "D"],
                                            "ME": ["E", "F#", "G#", "A", "B", "C#", "D#"],
                                            "MF": ["F", "G", "A", "A#", "C", "D", "E"],
                                            "MF#": ["F#", "G#", "A#", "B", "C#", "D#", "F"],
                                            "MG": ["G", "A", "B", "C", "D", "E", "F#"],
                                            "MG#": ["G#", "A#", "C", "C#", "D#", "F", "G"],
                                            "mA": ["A", "B", "C", "D", "E", "F", "G"],
                                            "mA#": ["A#", "C", "C#", "D#", "F", "F#", "G#"],
                                            "mB": ["B", "C#", "D", "E", "F#", "G", "A"],
                                            "mC": ["C", "D", "D#", "F", "G", "G#", "A#"],
                                            "mC#": ["C#", "D#", "E", "F#", "G#", "A", "B"],
                                            "mD": ["D", "E", "F", "G", "A", "A#", "C"],
                                            "mD#": ["D#", "F", "F#", "G#", "A#", "B", "C#"],
                                            "mE": ["E", "F#", "G", "A", "B", "C", "D"],
                                            "mF": ["F", "G", "G#", "A#", "C", "C#", "D#"],
                                            "mF#": ["F#", "G#", "A", "B", "C#", "D", "E"],
                                            "mG": ["G", "A", "A#", "C", "D", "D#", "F"],
                                            "mG#": ["G#", "A#", "B", "C#", "D#", "E", "F#"]]



func readInput() -> [String] {
    if let path = Bundle.main.path(forResource: "fileInput", ofType: "txt") {
        do {
            let data = try String(contentsOfFile: path, encoding: .utf8)
            let myStrings = data.components(separatedBy: .newlines)
            return myStrings
        } catch {
            print(error)
            return []
        }
    }
    return []
}

func solve(inputNotes: String) -> String {
    
    let n = inputNotes.count
    //lines =  read inputfile
    //result = processLines just prepare the inputfile
    var inputNotesArray: [String] = []
    
    inputNotes.split(separator: " ").forEach { (substring) in
        inputNotesArray.append("\(substring)")
    }
    
    return processLines(n: n, notes: inputNotesArray)
}

func processLines(n: Int, notes: [String]) -> String {
    
    var notesScales: [String] = Array(scales.keys)
    
    switch n {
    case 0:
        break
    default:
        let allNotesSimplified: [String] = getNotesSimplified(notes: notes)
        let filteredScales: Dictionary<String, [String]> = getScales(notesSimplified: allNotesSimplified)
        if filteredScales.count == 0 {
            return "None "
        }
        else {
            notesScales = Array(filteredScales.keys).sorted()
        }
    }
    
    var result: String = ""
    for scale in notesScales {
        result += (scale + " ")
    }
    return result
}

func getNotesSimplified(notes: [String]) -> [String] {
    
    let notesSimplified = notes.map { (note) -> String in
        for (unused, used) in simplification {
            if note == unused {
                return used
            }
        }
        return note
    }
    
    return notesSimplified
}

func getScales(notesSimplified: [String]) -> Dictionary<String, [String]> {
    
    //Enum.filter(@scales, fn {_name_scale, notes} -> Enum.count(all_notes_simplified, fn note -> Enum.member?(notes, note) end) == Enum.count(all_notes_simplified) end)
    
    var filteredScales: Dictionary<String, [String]> = [:]
    for (nameScale, notes) in scales {
        var numOfMemberNotes = 0
        for note in notesSimplified {
            if notes.contains(note) { numOfMemberNotes += 1 }
        }
        if numOfMemberNotes == notesSimplified.count {
            filteredScales[nameScale] = notes
        }
    }
    
    return filteredScales
}

let testCases = readInput()
var caseNumber: Int = 1
var index: Int = 0
for testCase in testCases {
    if Int(testCase) == 0 {
        print("Case #\(caseNumber): MA MA# MB MC MC# MD MD# ME MF MF# MG MG# mA mA# mB mC mC# mD mD# mE mF mF# mG mG#")
        index += 1
        caseNumber += 1
    }
    else if index % 2 != 0 {
        let result = solve(inputNotes: testCase)
        print("Case #\(caseNumber): \(result.dropLast())")
        caseNumber += 1
    }
    index += 1
}
