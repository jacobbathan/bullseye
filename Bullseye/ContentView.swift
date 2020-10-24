//
//  ContentView.swift
//  Bullseye
//
//  Created by Jacob Bathan on 10/23/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var knockIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("Welcome to my first app")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            Button(action: {
                print("Button pressed")
                self.alertIsVisible = true
            }) {
                Text("Hit Me!")
            }
            Button(action: {
                print("Knock Knock")
                self.knockIsVisible = true
            }) {
                Text("Knock Knock")
            }
            .alert(isPresented: $alertIsVisible) { () ->
                Alert in
                return Alert(title: Text("Hello there!"), message: Text("General Kenobi"), dismissButton: .default(Text("Awesome!")))
            }
            .alert(isPresented: $knockIsVisible) { () ->
                Alert in
                return Alert(title: Text("Whos There?"), message: Text("Lilly"), dismissButton: .default(Text("Lilly is a weirdo")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
