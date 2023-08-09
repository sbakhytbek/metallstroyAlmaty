//
//  ViewWorks.swift
//  metallstroyAlmaty
//
//  Created by Санжар Бахытбек on 13.07.2023.
//

import SwiftUI

struct ViewWorks: View {
    let imageNames = ["i1", "i2", "i3", "i4", "i5"]
    let textContent = [
        "Metalstructures",
        "Metalstructures",
        "Metalstructures",
        "Metalstructures",
        "Metalstructures"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<imageNames.count) { index in
                    NavigationLink(destination: Text(textContent[index])) {
                        Image(imageNames[index])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 200)
                    }
                }
                .navigationTitle("Work")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}

struct ViewWorks_Previews: PreviewProvider {
    static var previews: some View {
        ViewWorks()
    }
}
