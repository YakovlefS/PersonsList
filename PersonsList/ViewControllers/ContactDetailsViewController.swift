//
//  ContactDetailsViewController.swift
//  PersonsList
//
//  Created by YakovlefS on 06.01.2023.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    title = person.fullName
    emailLabel.text = "Email: \(person.email)"
    phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
    }
}
