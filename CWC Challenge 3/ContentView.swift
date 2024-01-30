//
//  ContentView.swift
//  CWC Challenge 3
//
//  Created by Matthew Dembinski on 1/30/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: Int
    @State var increasingChecker: Bool
    
    
    var body: some View {
        VStack {
            Text("Count: \(counter)")
            Button {
                
                if increasingChecker {
                    if counter > 50 {
                        increasingChecker = false
                        decrease()
                    }
                    else {
                        increase()
                    }
                }
                
                else {
                    if counter < 0 {
                        increasingChecker = true
                        increase()
                    }
                    else {
                        decrease()
                    }
                }
                
            } label: {
                Text("Tap Me!")
            }
        }
        .padding()
    }
    
    
    func increase() {
        counter += Int.random(in: 1...10)
    }
    
    func decrease() {
        counter -= Int.random(in: 1...10)
    }
    
    
}

#Preview {
    ContentView(counter: 0, increasingChecker: true)
}
