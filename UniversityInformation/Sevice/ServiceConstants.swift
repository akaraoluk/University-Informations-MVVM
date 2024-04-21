//
//  ServiceConstants.swift
//  UniversityInformation
//
//  Created by Abdurrahman Karaoluk on 21.04.2024.
//

import Foundation

class ServiceConstants {
    
    public static var shared = ServiceConstants()
    
    private init() {
        
    }
    
    public var url: String{
        get{
            return "http://universities.hipolabs.com/search?country=turkey"
        }
    }
}
