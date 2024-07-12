//
//  ContentView.swift
//  interactive App
//
//  Created by Sravya on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle = "What is your name?"
    @State private var name = ""
    var body: some View {
        VStack {
            
            Text(textTitle)
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            Button("Submit") {
                print(name)
                textTitle = "Welcome \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
