//
//  UserListView.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import SwiftUI
import Kingfisher
import Domain

public struct UserListView: View {
    @StateObject var viewModel = UserListViewModel()
    @StateObject var navigationCoordinator = UserNavigationCoordinator()
    
    public init() { }
    
    public var body: some View {
        NavigationStack(path: $navigationCoordinator.path) {
            listView
                .task {
                    await viewModel.fetchUsers()
                }
                .navigationTitle("Users")
                .navigationDestination(for: UserNavigationRoute.self) {
                    navigationCoordinator.destinationView(for: $0)
                }
        }
    }
    
    private var listView: some View {
        List {
            if let users = viewModel.users {
                ForEach(users) { user in
                    UserContactView(user: user)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            navigationCoordinator.navigate(to: .userDetails(user: user))
                        }
                }
            }
        }
    }
}

#Preview {
    UserListView()
}
