//
//  ResponseError.swift
//  
//
//  Created by Carlos López on 17/10/23.
//

import Foundation

public enum ResponseError: Error, LocalizedError {
    
    case `default`
    case internetConnection
    case serializer
    case dependencyInjection
    case emptyModel
    case custom(message: String)
    
    public var errorDescription: String? { localizedDescription }
    
    var localizedDescription: String {
        switch self {
        case .custom(let message):
            return message
        case .internetConnection:
            return "No Internet Connection. Make sure you're connected or try again later."
        case .serializer:
            return "Something went wrong fetching the response, please try again."
        case .dependencyInjection:
            return "Dependency Injection was not resolved"
        default:
            return "Something went wrong, please try again later."
        }
    }
    
    static func == (_ lhs: ResponseError, rhs: ResponseError) -> Bool {
        lhs.errorDescription == rhs.errorDescription
    }
    
    static func != (_ lhs: ResponseError, rhs: ResponseError) -> Bool {
        lhs.errorDescription != rhs.errorDescription
    }
}
