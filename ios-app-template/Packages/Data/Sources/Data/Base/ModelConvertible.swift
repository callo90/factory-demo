//
//  ModelConvertible.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import Foundation

protocol ModelConvertible {
    associatedtype ResponseValue
    var model: ResponseValue { get }
}
