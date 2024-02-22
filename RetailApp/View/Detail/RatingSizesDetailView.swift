//
//  RatingSizesDetailView.swift
//  RetailApp
//
//  Created by Kamalesh Kumar on 22/02/24.
//

import SwiftUI

struct RatingSizesDetailView: View {
    // MARK: - Properties
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                HStack(alignment: .center, spacing: 2) {
                    ForEach(0..<5, id: \.self) { index in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })

                    }
                }
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 1)
                                )

                        })

                    }
                }
            }
        }// HTStack
    }
}

#Preview {
    RatingSizesDetailView()
        .padding()
}
