//
//  UserDto.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import Foundation
import Domain

public struct UserDto: Codable {
    public var id: Int
    public var firstName: String?
    public var lastName: String?
    public var username: String?
    public var email: String?
    public var gender: String?
    public var phone: String?
    public var birthday: String?
    public var pictureURL: String?
}

extension UserDto: ModelConvertible {
 
    var model: User {
        User(
            id: id,
            firstName: firstName ?? "",
            lastName: lastName ?? "",
            username: username ?? "",
            email: email ?? "",
            gender: gender ?? "",
            phone: phone ?? "",
            birthday: birthday ?? "",
            pictureURL: pictureURL ?? ""
        )
    }
}
