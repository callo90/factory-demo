//
//  File.swift
//  
//
//  Created by Carlos López on 26/07/24.
//

import Foundation
import Domain
import Shared
import Factory

public class UserDataRepository: UserRepository {
    
    @LazyInjected(\DataSourcesContainer.userRemoteDataSource)
    private var userRemoteDataSource: UserRemoteDataSource?
    
    public init() { }
    
    public func fetchUsers() async throws -> [User] {
        guard let userRemoteDataSource else { throw ResponseError.dependencyInjection }
        return try await userRemoteDataSource.fetchUsers().compactMap { $0.model }
    }
}
