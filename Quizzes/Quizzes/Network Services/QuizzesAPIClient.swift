//
//  QuizzesAPIClient.swift
//  Quizzes
//
//  Created by Nathalie  on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

final class APIClient {
    static func getAllQuizzes(completionHandler: @escaping (([Quiz]?, AppError?) -> Void)) {
        guard let url = URL.init(string: "http://5c4d4c0d0de08100147c59b5.mockapi.io/api/v1/quizzes") else { completionHandler(nil, .badURL("url not working"))
            return }
        let urlRequest = URLRequest.init(url: url)
        
        URLSession.shared.dataTask(with: urlRequest) {(data, response, error) in
            if let error = error {
                completionHandler(nil, .networkError(error))
            }
            
            if let data = data {
                do {
                    let quizData = try JSONDecoder().decode([Quiz].self, from: data)
                    completionHandler(quizData, nil)
                    
                } catch {
                    completionHandler(nil, .jsonDecodingError(error))
                }
            }
        }.resume()
    }
}

