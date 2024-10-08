//
//  DatasourcesContainer.swift
//  ProjectTemplate
//
//  Created by Carlos López on 26/07/24.
//

import Foundation
import Data
import Factory

extension DataSourcesContainer: AutoRegistering {
    
    public func autoRegister() {
        userRemoteDataSource.register { UserRemoteDataSourceProvider() }
    }
}
