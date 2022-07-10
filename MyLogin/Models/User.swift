//
//  User.swift
//  MyLogin
//
//  Created by Yuliya Ten on 10.07.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "Yuliya",
            password: "Ten10",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let photo: String
    let firstName: String
    let lastName: String
    let gender: String
    let city: String
    let occupation: String
    let firstHobby: String
    let secondHobby: String
    let thirdHobby: String
    let firstPhoto: String
    let secondPhoto: String
    let thirdPhoto: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> Person {
        Person(
            photo: "ten",
            firstName: "Yuliya",
            lastName: "Ten",
            gender: "F",
            city: "Moscow",
            occupation: "Logistics",
            firstHobby: "Swimming",
            secondHobby: "Dancing",
            thirdHobby: "Singing",
            firstPhoto: "swimming",
            secondPhoto: "dancing",
            thirdPhoto: "singing"
            
        )
    }
}
