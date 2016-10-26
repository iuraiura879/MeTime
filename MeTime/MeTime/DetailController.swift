//
//  ViewController.swift
//  MeTime
//
//  Created by Iura Gutu on 20/10/2016.
//  Copyright © 2016 Iurie Gutu. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    @IBOutlet var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.shyNavBarManager.scrollView = self.scrollView;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

