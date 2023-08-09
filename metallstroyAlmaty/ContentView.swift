//
//  ContentView.swift
//  metallstroyAlmaty
//
//  Created by Санжар Бахытбек on 13.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            // Company
            
            ViewCompany()
                .tabItem(){
                    Image(systemName: "homekit")
                    Text("Company")
                }
            
            // Service
            
            ViewServices()
                .tabItem(){
                    Image(systemName: "gearshape.2")
                    Text("Service")
                }
            
            // Delivery
            
            ViewDelivery()
                .tabItem(){
                    Image(systemName: "box.truck.badge.clock")
                    Text("Delivery")
                }
            
           // Work
            
            ViewWorks()
                .tabItem(){
                    Image(systemName: "briefcase")
                    Text("Work")
                }
            
           // Contact
            
            ViewContacts()
                .tabItem(){
                    Image(systemName: "person.crop.circle")
                    Text("Contact")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
