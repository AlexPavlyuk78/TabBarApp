//
//  StartViewController.swift
//  TabBarApp
//
//  Created by Alex Pavlyuk on 2/3/23.
//

import UIKit

class StartViewController: UIViewController {
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        
        viewControllers.forEach { viewController in
            if let firstVC = viewController as? FirstViewController {
                firstVC.view.backgroundColor = .systemMint
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .systemBlue
            }
            
        }
        
    }
    
}


