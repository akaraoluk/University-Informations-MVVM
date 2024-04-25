//
//  MainViewCellModel.swift
//  UniversityInformation
//
//  Created by Abdurrahman Karaoluk on 25.04.2024.
//

import UIKit

struct MainViewCellModel {
    private let model: University
    
    init(model: University) {
        self.model = model
    }
    
    var url: URL? {
        return URL(string: model.webPages.first ?? "https://www.google.com")
    }
    
    var name: String? {
        return model.name
    }
}
