//
//  Appwrite.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 23/12/2021.
//

import Foundation
import AppwriteModels
import Appwrite

class AppwriteService {
    let client: Client
    let database: Database
    let account: Account
    
    init() {
        client = Client()
        _ = client.setEndpoint("https://demo.appwrite.io/v1")
            .setProject("234w3rsaf")
        
        database = Database(client)
        account = Account(client)
    }
    
    open func signup(name: String, email: String, password: String, completion: ((Result<AppwriteModels.User, AppwriteError>) -> Void)? = nil) {
        return account.create(email: email, password: password, name: name, completion: completion)
    }
}
