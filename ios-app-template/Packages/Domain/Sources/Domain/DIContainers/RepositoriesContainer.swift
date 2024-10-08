//
//  RepositoriesContainer.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import Foundation
import Factory

public final class RepositoriesContainer: SharedContainer {
    public static let shared = RepositoriesContainer()
    public let manager: ContainerManager = ContainerManager()
    public init() {}
}

public extension RepositoriesContainer {
    var userRepository: Factory<UserRepository?> { promised().singleton }
}
