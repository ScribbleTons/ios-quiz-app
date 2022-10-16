//
//  Buttons.swift
//  MVVM
//
//  Created by Emmanuel Ugwuoke on 15/10/2022.
//

import SwiftUI




// Answer Button

struct AnsButton: View {
    private var isAccent:Bool = false
    private var text:String = ""
    private var action: () -> Void
    
    var body: some View {
        if isAccent {
            Button(text, action: action).buttonStyle(AccentButton())
        } else {
            
            Button(text, action: action).buttonStyle(DefaultButton())
        }
        
        
    }
    
    
    
    init(_ text: String, isAccent:Bool=false, action: @escaping () -> Void) {
        self.text = text
        self.isAccent = isAccent
        self.action = action
    }
    
    
}

struct AccentButton: ButtonStyle {
    func makeBody(configuration:Configuration) -> some View {
        
        configuration.label.font(.callout).fontWeight(.medium).multilineTextAlignment(.center).padding(30).frame(width: 150, height: 150).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("accent")/*@END_MENU_TOKEN@*/).foregroundColor(.purple).border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/).shadow(radius: 10).scaleEffect(configuration.isPressed ? 0.9 : 1.0).animation(.easeOut(duration: 0.4), value: configuration.isPressed)
    }
}

struct DefaultButton: ButtonStyle {
    
    func makeBody(configuration:Configuration) -> some View {
        
        configuration.label.font(.callout).fontWeight(.medium).multilineTextAlignment(.center).padding(30).frame(width: 150, height: 150).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/).foregroundColor(.white).border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/).shadow(radius: 10).scaleEffect(configuration.isPressed ? 0.9 : 1.0).animation(.easeOut(duration: 0.4), value: configuration.isPressed)
    }
}

// Utility Button

struct UtilButtonStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.padding(10).foregroundColor(.white).background(.blue)
    }
}

struct UtilButton: View {
    private var text:String = ""
    private var action: () -> Void
    private var goBack:Bool
    
    var body: some View {
        if goBack {
            
            NavigationLink(text, value: Route.landingView).buttonStyle(UtilButtonStyle())
        }else {
            Button(text, action: action).buttonStyle(UtilButtonStyle())
            
        }}
    
    init(_ text:String, goBack:Bool = false){
        self.text = text
        self.goBack = goBack
        self.action = {}
        
    }
    
    init(_ text:String, action:@escaping () -> Void){
        
        self.text = text
        self.action = action
        self.goBack = false
        
    }
    
    
}

