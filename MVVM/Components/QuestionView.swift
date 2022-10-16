//
//  QuestionView.swift
//  MVVM
//
//  Created by Emmanuel Ugwuoke on 15/10/2022.
//

import SwiftUI

struct QuestionView: View {
    
    private let question: String
    private let option_1: String
    private let option_2: String
    private let option_3: String
    private let option_4: String
    private let correct_option: String
    private var action: (Int) -> Void
    
    @State var selected:String = ""
    
    
    var body: some View {
        
        Text(question).font(.headline).fontWeight(.semibold).foregroundColor(.white).multilineTextAlignment(.center).frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center
        )
        
        Spacer()
        Grid(horizontalSpacing: 20, verticalSpacing: 20){
            GridRow {
                
                AnsButton(option_1, isAccent: true){
                    selected = option_1
                    action(check(option_1))
                }
                AnsButton(option_2){
                    selected = option_2
                    action(check(option_2))
                }
            }
            GridRow{
                AnsButton(option_3){
                    selected = option_3
                    action(check(option_3))
                }
                AnsButton(option_4, isAccent: true){
                    selected = option_4
                    action(check(option_4))
                }
                
            }
            
        }
    }
    
    func check(_ option:String) -> Int {
        if option == correct_option
        {
            return 1
        }
        return 0
    }
    
    init(question: String, option_1: String, option_2: String, option_3: String, option_4: String, correct_option: String, action: @escaping (Int) -> Void) {
        self.question = question
        self.option_1 = option_1
        self.option_2 = option_2
        self.option_3 = option_3
        self.option_4 = option_4
        self.correct_option = correct_option
        self.action = action
    }
}

