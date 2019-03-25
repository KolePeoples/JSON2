//
//  MovieDataController.swift
//  JSON2
//
//  Created by Kole Peoples on 3/25/19.
//  Copyright © 2019 Kole Peoples. All rights reserved.
//

import UIKit

class MovieDataModel: Codable {
    
    var franchise: [Franchises]

    struct Franchises : Codable {
        let franchiseName: String
        let entries: [Entries]
    }
    
    struct Entries : Codable {
        let name: String
        let format: String
        let yearStart: String
        let yearEnd: String?
        let episodes: Int?
        let studio: String?
        let imageURL: String
        let description: String
        let summary: String
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
