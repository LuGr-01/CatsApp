//
//  BreedListView.swift
//  CatsApp
//
//  Created by user935646 on 13.03.24.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    let breedURL: URL
    
    var body: some View {
        List(viewModel.breeds) { 
            cat in NavigationLink(destination: DetailView(viewModel: DetailViewModel(breed: cat))
            ){
                Text(cat.name)
                    .font(.system(size: 18))
                    .bold()
                    .padding(10)
            }
        } // MARK: List End
        .onAppear {
            viewModel.fetchBreeds(from: breedURL)
        }
    } // MARK: body End
}

#Preview {
    ListView(viewModel: ViewModel(), breedURL: URL(string: "https://api.thecatapi.com/v1/breeds")!)
}

