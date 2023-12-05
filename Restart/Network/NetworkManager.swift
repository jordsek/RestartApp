//
//  NetworkManager.swift
//  Restart
//
//  Created by Jordan Isac on 09/10/2023.
//

import Foundation

struct NetworkManager {
    let urlSession: Networking
    init(urlSession: Networking) {
        self.urlSession = urlSession
    }
}

extension NetworkManager: Fetchable {
    func getDataFromAPI(url: URL) async throws -> Data {
        do{
            let (data, _) = try await urlSession.data(from: url, delegate: nil)
            return data
        }catch let error{
            throw error
        }
    }
}
