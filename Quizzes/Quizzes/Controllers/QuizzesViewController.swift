//
//  QuizzesViewController.swift
//  Quizzes
//
//  Created by Nathalie  on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizzesViewController: UIViewController {

    var quiz = [Quiz]()
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        APIClient.getAllQuizzes(completionHandler: { (quiz, error) in
                if let quiz = quiz {
                    self.quiz = quiz
                    dump(quiz)
                }
                if let error = error {
                    print(error)
                }
            })
    }

}
