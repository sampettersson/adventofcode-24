import Foundation
import Testing
import Inputs

@Test func day2() async throws {
    let (listA, listB) = try await Day2Input.getList()
    
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
