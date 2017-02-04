//
//  ViewController.swift
//  TestUnit
//
//  Created by Walid Sassi on 29/01/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import UIKit
import ChameleonFramework
class ViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  override var preferredStatusBarStyle: UIStatusBarStyle{
    return .lightContent
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = GradientColor(.radial, frame: self.view.frame, colors: [UIColor.flatSkyBlue,UIColor.flatSkyBlueDark])
    
  }

}

