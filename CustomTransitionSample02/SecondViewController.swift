//
//  ViewController.swift
//  CustomTransitionSample02
//
//  Created by hirauchi.shinichi on 2017/03/06.
//  Copyright © 2017年 SAPPOROWORKS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var indexPath: IndexPath!
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoView.image = UIImage(named: String.init(format: "%03d", indexPath.row))
        label.text = String.init(format: "Photo-%03d", indexPath.row)
    }

    @IBAction func tapCloseButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

