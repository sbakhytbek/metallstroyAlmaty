//
//  ViewServices.swift
//  metallstroyAlmaty
//
//  Created by Санжар Бахытбек on 13.07.2023.
//

import SwiftUI

struct ViewServices: View {
    let items = [
        Item(imageName: "1", title: "Manufacture of metal structures", description: "   Manufacture of non-standard equipment, buildings and other metal structures."),
        
        Item(imageName: "7", title: "Installation of metal structures of any complexity", description: "    High-quality installation of metal structures during construction."),
        
        Item(imageName: "6", title: "Cargo transportation", description: "  Operational cargo transportation. Favorable prices, cargo safety."),
        
        Item(imageName: "2", title: "Metalworking", description: "  Metalworking, changing shapes and sizes of metal products, metalworking according to drawings."),
        
        Item(imageName: "10", title: "Metal products", description: "   Sale of rolled metal products at favorable prices.                          ")
    ]
    
    var body: some View {
        NavigationStack {
            List(items, id: \.title) { item in
                VStack(alignment: .center){
                    Image(item.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350, height: 200)
                    
                    
                        Text(item.title)
                            .font(.headline)
                            .foregroundColor(.black)
                    
                    
                    
                    Text(item.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("Service")
            .navigationBarTitleDisplayMode(.large)
        }
    }
    
    
}

struct Item: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}
    
struct ViewServices_Previews: PreviewProvider {
    static var previews: some View {
        ViewServices()
    }
}
