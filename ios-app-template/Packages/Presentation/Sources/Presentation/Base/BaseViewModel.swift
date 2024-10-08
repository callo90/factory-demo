//
//  BaseViewModel.swift
//  
//
//  Created by Carlos López on 8/11/22.
//

import Foundation
import Combine
import ProgressHUD

public enum ViewState {
    case normal
    case loading
    case error
}

@MainActor
open class BaseViewModel: ObservableObject {
    @Published public var viewState: ViewState = .normal {
        didSet {
            if viewState == .loading {
                showLoadingHUD()
            } else {
                hideLoadingHUD()
            }
        }
    }
    
    public func showLoadingHUD() {
        ProgressHUD.animationType = .horizontalDotScaling
        ProgressHUD.animate("Loading", interaction: false)
    }
    
    public func hideLoadingHUD() {
        ProgressHUD.dismiss()
    }
}
