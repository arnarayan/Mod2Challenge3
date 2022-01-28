//
//  ContentView.swift
//  List Demo
//
//  Created by Anand Narayan on 2022-01-27.
//

import SwiftUI

struct ContentView: View {
    
    var array = ["Element 1", "Element 2", "Element 3"]
    var array2 = ["another 1", "another 2", "another 3"]
    
    var body: some View {

        NavigationView{
            List {
                ForEach(array, id: \.self) { elem in
                    NavigationLink(destination: Text(elem), label: {
                        Text("Click Me")
                    })
                    
                }
            }.navigationTitle("Test Title")
        }

        List {
            ForEach(array, id: \.self) { elem in
                Text(elem)
            }
                
        }

        
        List(array2, id: \.self) { elemr in
            Text(elemr)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
