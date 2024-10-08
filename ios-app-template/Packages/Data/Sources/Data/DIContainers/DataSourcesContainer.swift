//
//  DataSourcesContainer.swift
//  
//
//  Created by Carlos López on 26/07/24.
//

import Foundation
import Factory

public final class DataSourcesContainer: SharedContainer {
    public static let shared = DataSourcesContainer()
    public let manager: ContainerManager = ContainerManager()
    public init() {}
}

public extension DataSourcesContainer {
    var userRemoteDataSource: Factory<UserRemoteDataSource?> { promised().singleton }
}
