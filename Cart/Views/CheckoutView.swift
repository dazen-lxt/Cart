//
//  CheckoutView.swift
//  Cart
//
//  Created by Carlos Mario Muñoz on 7/05/23.
//

import SwiftUI

struct CheckoutView: View {
    
    @EnvironmentObject var order: Order
    @State private var paymentType: PaymentType = .cash
    
    var body: some View {
        VStack {
            Form {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(PaymentType.allCases, id: \.rawValue) {
                        Text($0.rawValue)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(Order())
    }
}

enum PaymentType: String, CaseIterable, Identifiable {
    case cash = "Cash"
    case creditCard = "Credit Card"
    
    var id: Self { self }
}
