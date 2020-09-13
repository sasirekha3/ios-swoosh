//
//  ViewController.swift
//  Swoosh
//
//  Created by Sasirekha Kambhampaty on 9/10/20.
//  Copyright © 2020 Sasirekha Kambhampaty. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    // When deleting unnecessary IBOutlets like the ones below, make sure to delete the references in Main.storyboard as well.
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    @IBAction func unwindFromLeagueVC(unwindSegue: UIStoryboardSegue){
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // A view's frame is always relative to its parent's position
//        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
//
//        bgImg.frame = view.frame
//
//
        // It is recommended by apple to use AutoLayout instead of managing this programmatically.
        
    }
}

