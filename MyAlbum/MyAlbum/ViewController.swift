//
//  ViewController.swift
//  MyAlbum
//
//  Created by 정현화 on 2021/08/08.
//  Copyright © 2021 com.hyhwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }

    
    @IBAction func showAlert(_ sender: Any) {
        let message = "가격은 ₩\(currentValue) 입니다"
        
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            self.refresh()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "W \(currentValue)"
    }
    
}

