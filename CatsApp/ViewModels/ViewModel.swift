//
//  ViewModel.swift
//  CatsApp
//
//  Created by user935646 on 13.03.24.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    @Published var breeds: [BreedModel] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    func fetchBreeds(from url: URL) {
         URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [BreedModel].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .receive(on: DispatchSerialQueue.main)
            .sink {[weak self] loadedBreeds in
                self?.breeds = loadedBreeds
            }
            .store(in: &cancellables)
    }
}
