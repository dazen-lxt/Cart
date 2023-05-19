//
//  ItemRowView.swift
//  Cart
//
//  Created by Carlos Mario Muñoz on 7/05/23.
//

import SwiftUI

struct ItemRowView: View {
    
    let item: MenuItem
    let listColors: [String: Color] = [
        "D": .purple,
        "G": .black,
        "N": .red,
        "S": .blue,
        "V": .green]
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(.gray, lineWidth: 2)
                }
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
            Spacer()
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(listColors[restriction])
                    .clipShape(Circle())
            }
        }
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView(item: MenuItem.example)
    }
}

