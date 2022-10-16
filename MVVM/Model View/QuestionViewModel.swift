//
//  QuestionViewModel.swift
//  MVVM
//
//  Created by Emmanuel Ugwuoke on 14/10/2022.
//

import Foundation


class QuestionViewModel{
    private var sourceURL = URL(string: "https://quiz-68112-default-rtdb.firebaseio.com/quiz.json")!
    var questionModel: DataModel?
    
    func getAllQuestions(completion: @escaping () -> ()) {
        URLSession.shared.dataTask(with: sourceURL ){[weak self](data, response, error) in
            
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let finalData = try! jsonDecoder.decode(DataModel.self, from:data)
                self?.questionModel = finalData
                completion()
            }
        }.resume()
    }}
