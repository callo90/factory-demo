//
//  User.swift
//  
//
//  Created by Carlos López on 26/07/24.
//

import Foundation

public struct User {
    public var id: Int
    public var firstName: String
    public var lastName: String
    public var username: String
    public var email: String
    public var gender: String
    public var phone: String
    public var birthday: String
    public var pictureURL: String
    
    public init(
        id: Int,
        firstName: String,
        lastName: String,
        username: String,
        email: String,
        gender: String,
        phone: String,
        birthday: String,
        pictureURL: String
    ) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.username = username
        self.email = email
        self.gender = gender
        self.phone = phone
        self.birthday = birthday
        self.pictureURL = pictureURL
    }
}

extension User: Identifiable { }
extension User: Hashable { }
