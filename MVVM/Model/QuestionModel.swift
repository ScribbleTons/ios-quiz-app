//
//  QuestionModel.swift
//  MVVM
//
//  Created by Emmanuel Ugwuoke on 14/10/2022.
//

import Foundation


struct DataModel: Codable {
    var data:QuestionModel?
}


struct QuestionModel: Codable {
    var questions: [Question]?
}


struct Question:Codable {
    var correct_answer:String
    var question:String
    var option_1:String
    var option_2:String
    var option_3:String
    var option_4:String
}
