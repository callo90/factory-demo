//
//  UserNavigationCoordinator.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import SwiftUI
import Domain

public enum UserNavigationRoute: Hashable {
    case userDetails(user: User)
}

public class UserNavigationCoordinator: BaseNavigationCoordinator {
    @Published public var path = NavigationPath()

    @ViewBuilder @MainActor
    public func destinationView(for route: UserNavigationRoute) -> some View {
        switch route {
        case .userDetails(let user):
            UserDetailView(user: user)
        }
    }
}
