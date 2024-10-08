//
//  UseCasesContainer.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import Foundation
import Factory

public final class UseCasesContainer: SharedContainer {
    public static let shared = UseCasesContainer()
    public let manager: ContainerManager = ContainerManager()
    public init() {}
}

public extension UseCasesContainer {
    var fetchUsersUseCase: Factory<FetchUsersUseCase?> { promised().singleton }
}
