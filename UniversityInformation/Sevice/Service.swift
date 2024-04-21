//
//  Service.swift
//  UniversityInformation
//
//  Created by Abdurrahman Karaoluk on 21.04.2024.
//

import Foundation
import Alamofire

enum ServiceError: Error {
    case urlError
    case decodingError
}

class Service {
    static func getData(completion: @escaping(Result<[University], ServiceError>) -> Void) {
        AF.request(ServiceConstants.shared.url).response { response in
            
            if let error = response.error {
                completion(.failure(.urlError))
                return
            }
            guard let data = response.data else { return}
            do {
                let dataResult = try JSONDecoder().decode([University].self, from: data)
                completion(.success((dataResult)))
            } catch {
                completion(.failure(.decodingError))
            }
        }
    }
}
