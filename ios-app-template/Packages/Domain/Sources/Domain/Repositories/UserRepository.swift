//
//  UserRepository.swift
//  
//
//  Created by Carlos López on 26/07/24.
//

import Foundation

public protocol UserRepository {
    func fetchUsers() async throws -> [User]
}
