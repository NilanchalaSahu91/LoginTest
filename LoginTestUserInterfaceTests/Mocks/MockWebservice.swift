//
//  MockWebservice.swift
//  LoginTestUserInterfaceTests
//
//  Created by Nilanchala Sahu on 11/06/22.
//

import Foundation

class MockWebservice: NetworkService {
    
    func login(username: String, password: String, completion: @escaping (Result<Void, NetworkError>) -> Void) {
        
        if username == "JohnDoe" && password == "Password" {
            completion(.success(()))
        } else {
            completion(.failure(.notAuthenticated))
        }
        
    }
    
}
