//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Tammanache, Nikhil (US - Bengaluru) on 09/06/19.
//  Copyright © 2019 Tammanache, Nikhil. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    fileprivate func loadData() -> NavigationButton<HStack<TupleView<(Image, VStack<TupleView<(Text, Text)>>)>>, DetailView> {
        // Detail view info is passed with NavigationButtons destination
        return NavigationButton(destination: DetailView(name: "DetailView", subText: "Passed info from first view")) {
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "photo")
                VStack(alignment: .leading, spacing: 20) {
                    Text("Hello World")
                        .color(.red)
                        .font(.system(size: 20))
                    Text("Welcome")
                }
            }
        }
    }
    
    var body: some View {
        NavigationView {
            // Creates a table view
            List(0...15) {_ in
                self.loadData()
            }
            .navigationBarTitle(Text("List View"))
        }
    }
}

// MARK:- Provide test inputs
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
