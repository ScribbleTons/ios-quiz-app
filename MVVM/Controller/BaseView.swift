//
//  BaseView.swift
//  MVVM
//
//  Created by Emmanuel Ugwuoke on 15/10/2022.
//

import SwiftUI


enum Route: Hashable {
    case landingView
    case scoreView(Int, Int)
    case contentView
}


struct BaseView: View {
  
    
    var body: some View {
        NavigationStack{
            LandingView().navigationDestination(for: Route.self){
                route in
                switch route {
                case .landingView:
                    LandingView()
                case .contentView:
                    ContentView()
                case .scoreView(let score, let total):
                    ScoreView(score:score, total:total)
                }
            }
            
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
