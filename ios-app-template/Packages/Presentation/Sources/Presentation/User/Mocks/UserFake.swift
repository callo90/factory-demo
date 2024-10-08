//
//  UserFake.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import Foundation
import Fakery
import Domain
import Shared

public protocol Fakeable {
    static var faker: Faker { get }
    static func fake() -> Self
}

extension User: Fakeable {
    public static var faker: Faker = Faker()
    
    public static func fake() -> User {
        User(
            id: faker.number.randomInt(),
            firstName: faker.name.firstName(),
            lastName: faker.name.lastName(),
            username: faker.internet.username(),
            email: faker.internet.email(),
            gender: faker.gender.type(),
            phone: faker.phoneNumber.cellPhone(),
            birthday: "",
            pictureURL: faker.internet.image()
        )
    }
}
