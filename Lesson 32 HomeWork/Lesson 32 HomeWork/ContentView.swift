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

let purpleColor = Color.purple
let brownColor = Color.brown
let cornerRadius: CGFloat = 50
let customFont: Font = .custom("Marker Felt", size: 50)
let modifierString = "upper label"

struct FontViewModifier: ViewModifier {
    func body(content: Content) -> some View {
            content
                .font(customFont)
                .foregroundColor(brownColor)
        }
}

struct BackGroundViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(purpleColor)
            .cornerRadius(cornerRadius)
    }
}

struct UpperLabelModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        VStack(spacing: 10) {
            Text(modifierString)
                .font(.largeTitle)
                .foregroundColor(.black)
            content
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
        modifier(UpperLabelModifier())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
