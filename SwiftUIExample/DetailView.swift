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
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(name)
            Text(subText)
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
