//
//  ContentView.swift
//  Lesson 32 HomeWork
//
//  Created by Ernest Mihasenko on 28.06.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .backGroundModifier()
            .fontViewModifier()
            .upperLabelModifier()
    }
}


struct FontViewModifier: ViewModifier {
    func body(content: Content) -> some View {
            content
                .font(.custom("Marker Felt", size: 50))
                .foregroundColor(.brown)
        }
    
}

struct BackGroundViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.purple)
            .cornerRadius(50)
    }
}

struct UpperLabelModifier: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .top) {
            content
            Text(text)
                .font(.largeTitle)
                .foregroundColor(.black)
        }
    }
    
}



extension View {
    func fontViewModifier() -> some View {
        modifier(FontViewModifier())
    }
    
    func backGroundModifier() -> some View {
        modifier(BackGroundViewModifier())
    }
    
    func upperLabelModifier() -> some View {
        modifier(UpperLabelModifier(text: "upper label"))
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
