//
//  UserListViewModel.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import Foundation
import Domain
import Factory
import Shared

public class UserListViewModel: BaseViewModel {
    @Published var users: [User]?
    @LazyInjected(\UseCasesContainer.fetchUsersUseCase)
    private var fetchUsersUseCase: FetchUsersUseCase?

    public override init() { }
    
    func fetchUsers() async {
        guard let fetchUsersUseCase else { return }
        viewState = .loading
        do {
            users = try await fetchUsersUseCase.execute()
            viewState = .normal
        } catch let error {
            viewState = .error
            Logs.log(level: .error, message: error.localizedDescription)
        }
    }
}
