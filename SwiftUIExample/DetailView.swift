//
//  DetailView.swift
//  SwiftUIExample
//
//  Created by Tammanache, Nikhil (US - Bengaluru) on 26/06/19.
//  Copyright © 2019 Tammanache, Nikhil. All rights reserved.
//

import SwiftUI

struct DetailView : View {
    var name: String
    var subText: String
    
    init(name: String, subText: String) {
        self.name = name
        self.subText = subText
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(name)
            Text(subText)
                .multilineTextAlignment(.center)
                .lineLimit(0)
        }
    }
}

#if DEBUG
struct DetailView_Previews : PreviewProvider {
    static var previews: some View {
        DetailView(name: "Nikhil123", subText: "123")
    }
}
#endif
