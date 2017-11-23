//
//  Protocols.swift
//  TraitsVsMixinsExample
//
//  Created by Yani Buchkov on 11/23/17.
//  Copyright © 2017 Mr Bouchkov. All rights reserved.
//

import Foundation

protocol ValidationFields {
    func isUsernameValid(username: String) -> Bool
    func isPasswordValid(password: String) -> Bool
}

extension ValidationFields {
    func isUsernameValid(username: String) -> Bool {
        let regex = "\\A\\w{7,18}\\z"
        let userValidation = NSPredicate(format: "SELF MATCHES %@", regex)
        return userValidation.evaluate(with: username)
    }
    
    func isPasswordValid(password: String) -> Bool {
        let regex = "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}"
        let passwordValidation = NSPredicate(format: "SELF MATCHES %@", regex)
        return passwordValidation.evaluate(with: password)
    }
}
