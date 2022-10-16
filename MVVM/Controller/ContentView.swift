//
//  ContentView.swift
//  MVVM
//
//  Created by Emmanuel Ugwuoke on 14/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    @State private var viewModel = QuestionViewModel()
    @State private var questions: [Question]?
    @State private var nextIndex = 0
    @State private var userScore = 0
    
    @State private var showScoreView:String = ""
    
    func next(){
        if nextIndex >= 0 && nextIndex <= questions!.count - 2 {
            nextIndex += 1
        }else {
            showScoreView = "Score"
        }
    }
    
    var body: some View {
        ZStack{
            Image("bg1").resizable().ignoresSafeArea()
            
            VStack{
                HStack{
                    if(!showScoreView.isEmpty){
                        NavigationLink(showScoreView, value: Route.scoreView( userScore,questions!.count )).buttonStyle(UtilButtonStyle())
                    } else {

                        UtilButton("Exit", goBack: true)
                        
                    }
                    
                    
                    Spacer()
                    UtilButton("Next"){
                        next()
                    }
                    
                }.padding(30)
                Spacer()
                if  questions?[nextIndex] != nil {
                    let question = questions![nextIndex]
                    
                    QuestionView(question: question.question, option_1: question.option_1, option_2: question.option_2, option_3: question.option_3, option_4: question.option_4, correct_option: question.correct_answer){
                        score in userScore += score
                        next()
                    }
                }
                Spacer()
                    
            }.onAppear{
                viewModel.getAllQuestions(completion: {
                    let questionData = viewModel.questionModel
                    
                    if let data = questionData {
                        if let qs = data.data {
                            questions = qs.questions
                        }
                        
                    }
                    
                })
                
            }.navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        }
    }
    
}

    
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

