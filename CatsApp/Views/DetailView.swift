//
//  DetailsView.swift
//  CatsApp
//
//  Created by user935646 on 13.03.24.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: DetailViewModel
        
    var body: some View {
        VStack(alignment: .center) {
            
            if viewModel.isLoading {
                ProgressView()
                .scaleEffect(2.0)
            } else {
                ImageView(image: viewModel.image)
            }
            
            HStack() {
                Spacer()
                Text(viewModel.breed.name)
                .font(.title)
                .foregroundStyle(.primary)
                Spacer()
            }
            .background(Color.yellow)
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            
            HStack() {
                Spacer()
                if let description = viewModel.breed.description {
                    Text(description)
                    .font(.body)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .padding(10)
                }
                Spacer()
            }
            .background(Color.yellow.opacity(0.1))
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
        }
        .background(Color.white)
        .navigationBarTitle(viewModel.breed.name, displayMode: .inline)
        .frame(minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .topLeading)
        
    } // MARK: body End
}

#Preview {
    DetailView(viewModel: DetailViewModel(breed: BreedModel(id: "asho", name: "American Shorthair", description: "This is just a preview. dfkjaslkfjldfjalksdjfösalkfjsaölfjlfk slajdf lfksdf dlksafjödfj sdlfjk.", reference_image_id: "JFPROfGtQ")))
}
