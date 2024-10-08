//
//  FetchUsersUseCase.swift
//  
//
//  Created by Carlos López on 26/07/24.
//

import Foundation
import Shared
import Factory

public class FetchUsersUseCase: UseCase {
    @LazyInjected(\RepositoriesContainer.userRepository)
    private var repository: UserRepository?
    
    public init() { }
    
    public func execute(requestValue: Any? = nil) async throws -> [User] {
        guard let repository else { throw ResponseError.dependencyInjection }
        return try await repository.fetchUsers()
    }
}
