//
//  UserRemoteDataSourceProvider.swift
//
//
//  Created by Carlos López on 26/07/24.
//

import Foundation
import Fakery
import Factory
import Shared

public protocol UserRemoteDataSource {
    func fetchUsers() async throws -> [UserDto]
}

public class UserRemoteDataSourceProvider: UserRemoteDataSource {
    
    public init() { }
    
    public func fetchUsers() async throws -> [UserDto] {
        [UserDto.fake(), UserDto.fake(), UserDto.fake()]
    }
}

extension UserDto {
    public static var faker: Faker = Faker()
    
    public static func fake() -> UserDto {
        UserDto(
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
