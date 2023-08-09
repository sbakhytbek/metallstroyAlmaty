//
//  ViewDelivery.swift
//  metallstroyAlmaty
//
//  Created by Санжар Бахытбек on 13.07.2023.
//

import SwiftUI

struct ViewDelivery: View {
    
    let imageNames = ["d3", "d1", "d2"]
    
    let gridData = [
        ["Transport, load capacity", "Unit of measurement", "By city", "Upper part of the city"],
        ["MAN, up to 5 tons, arrow up to 2 tons", "flight", "From 20,000", "From 40,000"],
        ["MAN, up to 13 tons, boom up to 8 tons", "flight", "From 20,000", "From 40,000"],
        ["KAMAZ, (long gauge) up to 20 tons", "flight", "From 30,000", "From 50,000"]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<gridData.count, id: \.self) { row in
                    HStack(spacing: 0) {
                        ForEach(0..<gridData[row].count, id: \.self) { column in
                            Text(gridData[row][column])
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color.white)
                                .border(Color.black)
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                Text(smallText)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                ScrollView(.horizontal) {
                            LazyHStack {
                                ForEach(imageNames, id: \.self) { imageName in
                                    Image(imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 300, height: 200)
                                }
                            }
                        }
            }
            .navigationTitle("Devivery")
            .navigationBarTitleDisplayMode(.large)
        }
        
    }
}

let smallText = """
There is a discount for regular customers.

The price calculation depends on the weight of the cargo and the time of loading/unloading.
"""
                     
struct ViewDelivery_Previews: PreviewProvider {
    static var previews: some View {
        ViewDelivery()
    }
}
