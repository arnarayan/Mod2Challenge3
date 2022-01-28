//
//  Challenge.swift
//  List Demo
//
//  Created by Anand Narayan on 2022-01-27.
//

import SwiftUI

struct Challenge: View {
    
    var array = ["One", "Two", "Three", "Four", "Five"]
    @State var addedWords:[String] = []
    
    var body: some View {
        
        NavigationView {
            List(addedWords, id: \.self) {elem in
                Text(elem)
            }.navigationTitle("Growing Pains")
        }

        Button(action: {
            let randomNumber = Int.random(in: 0...4)
            let displayString = array[randomNumber]
            addedWords.append(displayString)
        }, label: {
            Text("Add a Word")
        })
    }
}

struct Challenge_Previews: PreviewProvider {
    static var previews: some View {
        Challenge()
    }
}
