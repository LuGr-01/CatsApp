//
//  Breed.swift
//  CatsApp
//
//  Created by user935646 on 13.03.24.
//

import Foundation

/** Cat Breed Model
 * Identifiable --> Unique by id
 * Decodable --> From JSON
 */
struct BreedModel: Identifiable, Decodable {
    let id: String
    let name: String
    let description: String?
    let reference_image_id: String?

    var imageURL: URL? {
        guard let referenceImageID = self.reference_image_id else {
            return nil
        }
        
        let url =  URL(string: "https://cdn2.thecatapi.com/images/\(referenceImageID).jpg")
        
        return url;
    }
}
