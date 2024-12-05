import Foundation

public struct Day1Input {
    enum ListError: Error {
        case url
    }
    
    public static func getList() async throws -> [(Int, Int)] {
        guard let url = Bundle.module.url(forResource: "Day1", withExtension: "txt", subdirectory: "Resources") else {
            throw ListError.url
        }
                
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let lines = String(decoding: data, as: UTF8.self).split(separator: "\n")
        
        var listA: [Int] = []
        var listB: [Int] = []
        
        for line in lines {
            for (offset, number) in line.split(separator: " ")
                .compactMap({ Int($0) })
                .enumerated() {
                if offset == 0 {
                    listA.append(number)
                } else {
                    listB.append(number)
                }
            }
        }
        
        listA.sort()
        listB.sort()
        
        return zip(listA, listB).map { ($0.0, $0.1) }
    }
}
