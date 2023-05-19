//
//  ItemDetailView.swift
//  Cart
//
//  Created by Carlos Mario Muñoz on 7/05/23.
//

import SwiftUI

struct ItemDetailView: View {
    
    @EnvironmentObject var order: Order
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .foregroundColor(.white)
                    .font(.caption)
            }
            Text(item.description)
                .padding()
            Button("OrderThis") {
                order.add(item: item)
            }.buttonStyle(.borderedProminent)
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetailView(item: MenuItem.example).environmentObject(Order())
        }
    }
}
