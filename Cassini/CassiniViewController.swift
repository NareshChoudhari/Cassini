//
//  CassiniViewController.swift
//  Cassini
//
//  Created by NareshNaidu on 19/05/17.
//  Copyright © 2017 NareshNaidu. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController, UISplitViewControllerDelegate
{
    override func awakeFromNib() {
        super.awakeFromNib()
        self.splitViewController?.delegate = self
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = DemoURL.NASA[segue.identifier ?? ""]  {
            if let imageVC = (segue.destination.contentes as? ImageViewController)  {
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
                
            }
        }
    }
    func splitViewController(
        _ splitViewController: UISplitViewController,
        collapseSecondary secondaryViewController: UIViewController,
        onto primaryViewController: UIViewController
        ) -> Bool
    {
        if primaryViewController.contentes == self {
            if let ivc = secondaryViewController.contentes as? ImageViewController, ivc.imageURL == nil {
                return true
            }
        }
        return false
    }
}
extension UIViewController
{
    var contentes: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        }else {
            return self
        }
    }
}
