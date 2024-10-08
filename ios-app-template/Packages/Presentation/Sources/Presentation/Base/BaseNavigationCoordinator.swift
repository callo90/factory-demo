//
//  BaseNavigationCoordinator.swift
//  
//
//  Created by Carlos López on 26/07/24.
//

import SwiftUI

public protocol BaseNavigationCoordinator: ObservableObject {
    associatedtype Body: View
    associatedtype Route: Hashable
    var path: NavigationPath { get set }
    @ViewBuilder @MainActor func destinationView(for route: Route) -> Self.Body
}

extension BaseNavigationCoordinator {
    
    public func navigate(to route: Route) {
        path.append(route)
    }
    
    public func navigate(to route: any Hashable) {
        path.append(route)
    }
    
    public func popToRootPath() {
        path.removeLast(path.count)
    }
    
    public func popToLastPath() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
    
    public func popToPosition(_ position: Int) {
        guard position <= path.count else { return }
        path.removeLast(position)
    }
}
