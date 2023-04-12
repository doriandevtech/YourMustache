//
//  MyMustacheVC.swift
//  YourMustach
//
//  Created by Dorian Emenir on 09/04/2023.
//

import UIKit

class MyMustacheVC: UIViewController {
    
    @IBOutlet weak var mustacheNameLbl: UILabel!
    @IBOutlet weak var mustachDescLbl: UILabel!
    @IBOutlet weak var mustacheIV: UIImageView!
    
    @IBOutlet weak var mustachesCollectionView: UICollectionView!
    
    var objects = AllMustaches.get.allMustaches
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mustachesCollectionView.dataSource = self
        mustachesCollectionView.delegate = self
        let flow = UICollectionViewFlowLayout()
        let width = mustachesCollectionView.frame.width - 220
        let height = mustachesCollectionView.frame.height
        flow.itemSize = CGSize(width: width, height: height)
        flow.minimumLineSpacing = 0
        flow.scrollDirection = .horizontal
        mustachesCollectionView.collectionViewLayout = flow
        
        // Customize collectionView
        mustachesCollectionView.layer.cornerRadius = 30
        mustachesCollectionView.backgroundColor = .systemTeal
        
        // Item view by default
        mustacheNameLbl.text = objects[0].capitalizedName
        mustachDescLbl.text = objects[0].desc
        mustacheIV.image = objects[0].image
        
    }


}

extension MyMustacheVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! MustacheCell
        let object = objects[indexPath.item]
        cell.object = object
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Update view with selected item
        mustacheNameLbl.text = objects[indexPath.item].capitalizedName
        mustachDescLbl.text = objects[indexPath.item].desc
        mustacheIV.image = objects[indexPath.item].image
    }

}
