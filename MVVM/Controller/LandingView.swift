//
//  LandingView.swift
//  MVVM
//
//  Created by Emmanuel Ugwuoke on 15/10/2022.
//

import SwiftUI

struct LandingView: View {
   
    var body: some View {
            ZStack {
                Image("bg").resizable().aspectRatio( contentMode: .fill).ignoresSafeArea()
               
                VStack(spacing: 50) {
                    VStack{
                        Image("idea").resizable().aspectRatio(contentMode: .fit).frame(width: 80.0)
                        
                        Text("Quiz App").font(.largeTitle).fontWeight(.bold).foregroundColor(Color("Primary")).padding(.bottom, 6.0)
                        
                        Text("Learn. Take Quiz. Repeat")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.blue)
                    }
                    
                    VStack(spacing:30){
                       
                            NavigationLink("Play", value: Route.contentView)
                        
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0)
                            .buttonBorderShape(.roundedRectangle)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Primary")/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                        
                        
                       
                        NavigationLink("Topics", value: Route.contentView).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 300.0)
                            .buttonBorderShape(.roundedRectangle)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("accent")/*@END_MENU_TOKEN@*/)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("Primary")/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                        
                    }}
            
               
            .navigationTitle("LandingView").navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
           
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            LandingView().navigationDestination(for: Route.self){
                route in
                switch route {
                case .landingView:
                    LandingView()
                case .contentView:
                    ContentView()
                case .scoreView:
                    ScoreView()
                }
            }

        }
    }
}
