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
    
    static let shared = AppwriteService()
    
    init() {
        client = Client()
        _ = client.setEndpoint("https://dbqa.appwrite.org/v1")
            .setProject("netflix")
        
        database = Database(client)
        account = Account(client)
    }
}
