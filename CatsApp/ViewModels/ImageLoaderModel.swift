//
//  ImageLoader.swift
//  CatsApp
//
//  Created by user935646 on 13.03.24.
//

import Foundation
import Combine
import UIKit

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    
    private var cancellable: AnyCancellable?
    
    init(url: URL) {
        loadImage(from: url)
    }
    
    private func loadImage(from url: URL) {
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .sink { [weak self] loadedImage in
                self?.image = loadedImage
            }
    }
}
