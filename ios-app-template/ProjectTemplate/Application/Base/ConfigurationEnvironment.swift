//
//  ConfigurationEnvironment.swift
//  ProjectTemplate
//
//  Created by Carlos López on 4/11/22.
//

import Foundation

public enum ConfigurationEnvironment: String {
    case development
    case staging
    case uat
    case production
    
    public static let current: ConfigurationEnvironment = {
        let configuration = (Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String)?.lowercased() ?? ""
        return ConfigurationEnvironment(rawValue: configuration) ?? .development
    }()
}
