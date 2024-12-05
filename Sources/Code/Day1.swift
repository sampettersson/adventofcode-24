import Foundation
import Testing
import Inputs

@Test func day1() async throws {
    let list = try await Day1Input.getList()
    
    let response = zip(list.0, list.1).map { abs($0.0 - $0.1) }.reduce(0, +)
    
    print("Response is \(response)")
}

@Test func day1PartTwo() async throws {
    let (listA, listB) = try await Day1Input.getList()
    
    var frequencies: [Int: Int] = [:]
    
    for numberA in listA {
        var count = 0
        
        for numberB in listB {
            if numberB > numberA {
                break
            }
            
            if numberA == numberB {
                count += 1
            }
        }
        
        frequencies[numberA] = count
    }
    
    let response = frequencies.map { key, number in
        key * number
    }.reduce(0, +)
    
    print("Response is \(response)")
}
