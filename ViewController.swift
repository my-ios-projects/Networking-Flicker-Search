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
    @IBOutlet weak var button_textSearch: UIButton!
    @IBOutlet weak var button_latlongSearch: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    
    private func get_bbox_string() -> String{
        
        guard let lat = Double(textField_searchByLat.text!),
              let long = Double(textField_searchByLong.text!)
            else {return  "0,0,0,0"}
        
        let latRange:Double = 10
        let longRange:Double = 10
        
        let minLat = lat - latRange
        let maxLat = lat + latRange
        let minLong = long - longRange
        let maxLong = long + longRange

        return "\(minLat),\(minLong),\(maxLat),\(maxLong)"
    } // end get_bbox_string
    
    
    func build_url(keyName:String, value:String) -> URLComponents {
        
        // If you used let to define the url; you cannot modify its attributes.
        var url = URLComponents()
        
        url.scheme = URL_info.scheme
        url.path   = URL_info.path
        url.host   = URL_info.host
        
        var queries  = [URLQueryItem]()
        
        //
        for (key, value) in URL_info.queries {
            queries.append(URLQueryItem(name: key, value: value))
        }
        
        if keyName == "text" || keyName == "bbox" {
            queries.append(URLQueryItem(name: keyName, value: value))
        } else
        {return URLComponents()}
        
        
        url.queryItems = queries
        return url
    } // end build_url
    

}

