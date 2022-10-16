//
//  ScoreView.swift
//  MVVM
//
//  Created by Emmanuel Ugwuoke on 15/10/2022.
//

import SwiftUI

struct ScoreView: View {
    
    var score = 0
    var total = 0
    
    var body: some View {
            ZStack {
                Image("bg").resizable().aspectRatio( contentMode: .fill).ignoresSafeArea()
               

                VStack(alignment: .center) {
                   
                    Image("trophy").resizable().aspectRatio( contentMode: .fit).frame(width: 100.0)
                    Text("Congratulations")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Primary"))
                    Text("Your Score")
                        .padding(.all)
                    Text("\(score)/\(total)")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Text("You did a great job. Learn more by taking another quiz.")
                        .font(.callout)
                        .fontWeight(.regular)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                        .lineLimit(5)
                        .padding(.all)
                    
                    NavigationLink("Back to Home", value: Route.landingView)
                        .padding(.all)
                        .background(Color.blue)
                        .foregroundColor(.white)
                   
                }
                .padding()
                .frame(minWidth: 300)
                .accessibilityLabel("Label")
                .accessibilityIdentifier("Identifier")
              
                
            }.navigationTitle("ScoreView").navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            
        }
}
 
struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
