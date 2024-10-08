//
//  RepositoriesContainer.swift
//  ProjectTemplate
//
//  Created by Carlos López on 21/04/23.
//

import Foundation
import Domain
import Data
import Factory

extension RepositoriesContainer: @retroactive AutoRegistering {
    
    public func autoRegister() {
        userRepository.register { UserDataRepository() }
    }
}
