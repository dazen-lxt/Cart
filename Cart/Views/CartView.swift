//
//  CartView.swift
//  Cart
//
//  Created by Carlos Mario Muñoz on 7/05/23.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                Section {
                    NavigationLink("Place Order") {
                        CheckoutView()
                    }
                }
            }
            .navigationTitle("Cart")
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView().environmentObject(Order())
    }
}
