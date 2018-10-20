//
//  HomeViewController.swift
//  DemoProject4
//
//  Created by Revonomics on 20/10/18.
//  Copyright © 2018 Revonomics. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        contentView.layer.masksToBounds = true
        contentView.layer.borderColor = #colorLiteral(red: 0.4948185682, green: 0.9115166664, blue: 0.7522329092, alpha: 1)
        contentView.layer.borderWidth = 8
        contentView.layer.cornerRadius = 10
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
