//
//  MainTabsController.swift
//  MeTime
//
//  Created by Iura Gutu on 21/10/2016.
//  Copyright © 2016 Iurie Gutu. All rights reserved.
//

import UIKit

class MainTabsController: UITabBarController, UITabBarControllerDelegate, UISearchBarDelegate{
    
    
    lazy var leftNavBarButton : UIBarButtonItem = {
        
       
        [unowned self] in
        let frame = self.navigationController?.navigationBar.frame
        let width : Int = Int((frame?.width)!)
        var searchBar:UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: width - ( 17*2 ) , height: 20))
        searchBar.delegate = self;
        return UIBarButtonItem(customView:searchBar)
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                self.delegate = self
        self.navigationItem.leftBarButtonItem = leftNavBarButton
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    public func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController){
        
        let pos = tabBarController.selectedIndex;
        
        if( pos == 0 ){
            self.title = "";
            
            self.navigationItem.leftBarButtonItem = leftNavBarButton
        }
        else if( pos == 1 ){
            self.title = "Cluj Napoca";
            self.navigationItem.leftBarButtonItem = nil;
        }
        else if( pos == 2 ){
            self.title = "Favorites";
            self.navigationItem.leftBarButtonItem = nil;
        }
        else if( pos == 3 ){
            self.title = "MeTime";
            self.navigationItem.leftBarButtonItem = nil;
        }
        
    }
    
  
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
      
        let viewControllers = self.viewControllers
        let searchController : SearchController = viewControllers?[0] as! SearchController
        searchController.presentPlaceAutocomplete()
        
    }
    
}
