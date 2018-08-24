//
//  ViewController.swift
//  04 Flicker Finder
//
//  Created by Taha Magdy on 8/24/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: Outlets/UI_Objects
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField_searchByText: UITextField!
    @IBOutlet weak var textField_searchByLat: UITextField!
    @IBOutlet weak var textField_searchByLong: UITextField!
    @IBOutlet weak var label_lat: UILabel!
    @IBOutlet weak var label_long: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



}

