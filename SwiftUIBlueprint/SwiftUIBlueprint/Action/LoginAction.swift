

import Foundation

struct LoginAction {
    
    let path = "/login"
    let method: HTTPMethod = .post
    var parameters: LoginRequest
    
    func call(
        completion: @escaping (LoginResponse) -> Void,
        failure: @escaping (APIError) -> Void) {
            APIRequest<LoginRequest, LoginResponse>.call(path: path, method: .post, parameters: parameters) { data in
                if let response = try? JSONDecoder().decode(LoginResponse.self, from: data){
                    completion(response)
                } else {
                    failure(APIError.jsonDecoding)
                }
            } failure: { error in
                failure(error)
            }
        }
}
