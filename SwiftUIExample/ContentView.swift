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
        return NavigationButton(destination: DetailView(name: "Nikhil123", subText: "123")) {
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "photo")
                VStack(alignment: .leading, spacing: 20) {
                    Text("Hello World")
                        .color(.red)
                        .font(.system(size: 20))
                    Text("Hello 2")
                }
            }
        }
    }
    
    var body: some View {
        NavigationView {
            List(0...15) {_ in
                self.loadData()
            }
            .navigationBarTitle(Text("Test"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
