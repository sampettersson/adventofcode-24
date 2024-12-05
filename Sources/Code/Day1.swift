import Foundation
import Testing
import Inputs

@Test func day1() async throws {
    let list = try await Day1Input.getList()
    
    let response = list.map { abs($0.0 - $0.1) }.reduce(0, +)
    
    print("Response is \(response)")
}
