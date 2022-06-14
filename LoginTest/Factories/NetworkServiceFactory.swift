//
//  NetworkServiceFactory.swift
//  LoginTest
//
//  Created by Nilanchala Sahu on 11/06/22.
//

import Foundation

class NetworkServiceFactory {
    
    static func create() -> NetworkService {
        
        let environment = ProcessInfo.processInfo.environment["ENV"]
        
        if let environment = environment {
            if environment == "TEST" {
                return MockWebservice()
            } else {
                return Webservice()
            }
        } else {
            return Webservice() 
        }
        
    }
    
}
