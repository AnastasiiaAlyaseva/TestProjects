

import Foundation

typealias CompletionHandler = (Data) -> Void

enum HTTPMethod: String {
    case get, put, post, delete
}

class APIRequest<Parameters: Encodable, Model: Decodable> {
    
    static func call(
        scheme: String = Config.shared.scheme,
        host: String = Config.shared.host,
        path: String,
        method: HTTPMethod,
        parameters: Parameters? = nil,
        completion: @escaping CompletionHandler) {
            
            var components = URLComponents()
            components.scheme = scheme
            components.host = host
            components.path = path
            
            guard let url = components.url else { return }
            
            var request = URLRequest(url: url)
            request.httpMethod = method.rawValue
            
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            request.addValue("true", forHTTPHeaderField: "x-mock-match-request-body")
            
            if let parameters = parameters {
                request.httpBody = try? JSONEncoder().encode(parameters)
            }
            
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                if let data = data {
                    completion(data)
                } else {
                    if let error = error {
                        print("Error: \(error.localizedDescription)")
                    }
                }
            }
            task.resume()
        }
}
