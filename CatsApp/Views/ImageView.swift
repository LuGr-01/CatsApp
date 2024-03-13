//
//  ImageView.swift
//  CatsApp
//
//  Created by user935646 on 13.03.24.
//

import SwiftUI

struct ImageView: View {
    var image: UIImage?
    
    var body: some View {
        // if there is no image display a placeholder
        if let image = image {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                // .shadow(radius: 5)
        } else {
            Image(systemName: "photo.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.gray)
        }
    } // MARK: body End
}

#Preview {
    ImageView()
}
