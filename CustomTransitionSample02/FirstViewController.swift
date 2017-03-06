//
//  FirstViewController.swift
//  CustomTransitionSample02
//
//  Created by hirauchi.shinichi on 2017/03/06.
//  Copyright © 2017年 SAPPOROWORKS. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FirstViewController: UICollectionViewController {

    let photoMax = 35
    let customTransition = CustomTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondView = segue.destination as? SecondViewController, let indexPath = sender as? IndexPath {
            secondView.indexPath = indexPath
            secondView.transitioningDelegate = customTransition
        }
    }
    
    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "gotoSecondViewCollection", sender: indexPath)
    }
    
    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoMax
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.photoView.image = UIImage(named: String.init(format: "%03d", indexPath.row))
        cell.label.text = String.init(format: "Photo-%03d", indexPath.row)
        return cell
    }

}
