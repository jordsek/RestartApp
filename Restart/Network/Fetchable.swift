//
//  Fetchable.swift
//  Restart
//
//  Created by Jordan Isac on 09/10/2023.
//

import Foundation

protocol Fetchable{
    func getDataFromAPI(url: URL) async throws -> Data
        
}
