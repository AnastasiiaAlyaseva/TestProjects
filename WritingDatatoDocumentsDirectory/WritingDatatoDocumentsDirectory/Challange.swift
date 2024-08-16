

import Foundation

//back in project 8 we looked at how to create a generic extension on Bundle that let us find, load, and decode any Codable data from our app bundle. Can you write something similar for the documents directory, perhaps making it an extension on FileManager?


extension FileManager {
    var documentsDirectory: URL {
        return urls(for: .documentDirectory, in: .userDomainMask).first!
    }

    func save<T: Codable>(_ object: T, to file: String) throws {
        let url = documentsDirectory.appendingPathComponent(file)
        let encoder = JSONEncoder()
        let data = try encoder.encode(object)
        try data.write(to: url, options: [.atomic, .completeFileProtection])
    }

    func load<T: Codable>(_ file: String) throws -> T {
        let url = documentsDirectory.appendingPathComponent(file)
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        return try decoder.decode(T.self, from: data)
    }
}
