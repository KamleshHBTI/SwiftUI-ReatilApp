//
//  QuantityFavouriteDetailView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 22/02/24.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - Properties
    @State private var counter: Int = 0

    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                    feedback.impactOccurred()
                }
            }, label: {
                Image(systemName: "minus.circle")
            })

            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)

            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })

            Spacer()
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        }//: HStack
        .font(.system(.title, design: .rounded))
        .foregroundStyle(Color.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDetailView()
        .padding()
}
