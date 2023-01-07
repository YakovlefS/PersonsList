//
//  Person.swift
//  PersonsList
//
//  Created by YakovlefS on 06.01.2023.
//
import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surname = DataManager.shared.surname.shuffled()
        let email = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surname.count, email.count, phones.count)
        
        for index in 0 ..< iterationCount {
            let person = Person(
                name: names[index],
                surname: surname[index],
                email: email[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
