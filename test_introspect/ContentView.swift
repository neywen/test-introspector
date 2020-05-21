//
//  ContentView.swift
//  test_introspect
//
//  Created by neywen on 22/05/2020.
//  Copyright © 2020 neywen. All rights reserved.
//

import SwiftUI
import Introspect

struct ContentView: View {
    
    @State var sheetIsPresented = true
    
    var body: some View {

        VStack {
            TextView()
        }
    }
}

struct TextView: View {
    
    @State var text: String = ""
    
    var body: some View {
        
        HStack {
            HStack {
                TextField("meh", text: $text)
                    .introspectTextField { (textField) in
                        print("introspect textField")
                }
                // uncomment the following will silence the introspector
                // .cornerRadius(10.0)
            }
            // uncomment the following will silence the introspector
            // .cornerRadius(10.0)
        }
        // uncomment the following will silence the introspector
        // .cornerRadius(10.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
