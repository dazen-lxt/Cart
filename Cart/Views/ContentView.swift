//
//  ContentView.swift
//  Cart
//
//  Created by Carlos Mario Muñoz on 7/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "square.and.pencil")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
