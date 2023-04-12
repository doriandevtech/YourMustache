//
//  Mustache.swift
//  YourMustache
//
//  Created by Dorian Emenir on 09/04/2023.
//

import UIKit


struct Mustache {
    
    var name: String
    var desc: String
    
    var capitalizedName: String {
        return name.capitalized
    }
    
    var title: String {
        let capitName: String = name.capitalized
        return "The mustache's style is \(capitName)"
    }
    
    var image: UIImage? {
        return UIImage(named: name)
    }
}
