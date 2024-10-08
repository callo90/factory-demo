//
//  UseCasesContainer.swift
//  ProjectTemplate
//
//  Created by Carlos López on 21/04/23.
//

import Foundation
import Domain
import Factory

extension UseCasesContainer: @retroactive AutoRegistering {
    
    public func autoRegister() {
        fetchUsersUseCase.register { FetchUsersUseCase() }
    }
}
