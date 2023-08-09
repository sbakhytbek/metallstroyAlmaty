//
//  ViewContacts.swift
//  metallstroyAlmaty
//
//  Created by Санжар Бахытбек on 13.07.2023.
//

import SwiftUI


struct ViewContacts: View {
    @State private var text1 = ""
    @State private var text2 = ""
    @State private var text3 = ""
    var body: some View {
        NavigationStack{
            VStack {
                List {
                    Section(header: Text("User info")) {
                        TextField("Enter your name", text: $text1)
                        TextField("Enter phone number", text: $text2)
                        TextField("Text message", text: $text3)
                    }
                    
                    Section(header: Text("Our contacts:")) {
                        HStack {
                            Image(systemName: "house.fill")
                                .font(.title)
                            Text("RK, Almaty, Goethe street 257/7")
                        }
                        
                        HStack {
                            Image(systemName: "phone.fill")
                                .font(.title)
                            Text("+7 (701) 315-16-13")
                        }
                        
                        HStack {
                            Image(systemName: "envelope.fill")
                                .font(.title)
                            Text("info.mts.ala@mail.ru")
                        }
                    }
                }
                
                Button(action: saveData) {
                    Text("Save")
                        .foregroundColor(.white)
                        .frame(width: 180, height: 44)
                        .background(
                        LinearGradient(
                            colors: [.purple, .blue], startPoint: .topLeading, endPoint: .trailing
                        )
                        )
                        .cornerRadius(12)
                        .shadow(radius: 8)
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Contact")
            .navigationBarTitleDisplayMode(.large)
        }
    }
    
    func saveData() {
    }
}
struct ViewContacts_Previews: PreviewProvider {
    static var previews: some View {
        ViewContacts()
    }
}
