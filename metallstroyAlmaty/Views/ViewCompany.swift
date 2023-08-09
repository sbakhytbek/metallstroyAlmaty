//
//  ViewCompany.swift
//  metallstroyAlmaty
//
//  Created by Санжар Бахытбек on 13.07.2023.
//

import SwiftUI

struct ViewCompany: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                VStack{
                    List {
                        Text(longText)
                            .lineSpacing(5)
                    }
                    
                }
            }
            
            .navigationTitle("Company")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

let longText = """

                       About the company
    
    LLP «METALLSTROY Almaty» - is a construction company whose main specialization is the manufacture and installation of metal structures of any complexity. Our company provides services for the design, construction, reconstruction, repair of residential, commercial and industrial buildings throughout the Republic of Kazakhstan.
    
    The main advantage of the company is :
    • Workshop of 1,200 m2 with crane beams of 5 tons and 10 tons, equipped with its own machine park in the form of guillotines, drilling machines, pipe cutter, plasma cutters, welding machines, on the basis of the KVOiT plant on the street.Goethe 257/7 founded in 1957.
    • Office premises for IT
    • Own vehicles in the form of a crane manipulator MAN - 2 units, a long–gauge KAMAZ – 2 units, GAZELLE – 1 unit.
    
    Including the following types of work :
    • Design of buildings and structures
    • Manufacture and installation of metal structures
    • Assembly and installation of roofs of any complexity
    • Installation of profiled flooring and sandwich panels
    • Laying of pipelines
    • Transportation services
    
    The company «METALLSTROY Almaty» has all the necessary permits and a license for construction and installation work. We use only high-quality certified material from trusted suppliers and high quality of work in compliance with all agreed deadlines.
    
    """
                         
struct ViewCompany_Previews: PreviewProvider {
    static var previews: some View {
        ViewCompany()
    }
}
