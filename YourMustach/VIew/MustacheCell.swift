//
//  MustacheCell.swift
//  YourMustach
//
//  Created by Dorian Emenir on 09/04/2023.
//

import UIKit

class MustacheCell: UICollectionViewCell {
    
    @IBOutlet weak var objectIV: UIImageView!
    
    var object: Mustache! {
        didSet {
            objectIV.image = object.image
            objectIV.layer.cornerRadius = 45
        }
    }
}
