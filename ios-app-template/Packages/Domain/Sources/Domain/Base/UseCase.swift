//
//  UseCase.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import Foundation

public protocol UseCase {
    associatedtype RequestValue
    associatedtype ResponseValue
    func execute(requestValue: RequestValue) async throws -> ResponseValue
}
