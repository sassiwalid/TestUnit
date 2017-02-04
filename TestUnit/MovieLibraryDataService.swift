//
//  MovieLibraryDataService.swift
//  TestUnit
//
//  Created by Walid Sassi on 04/02/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import UIKit

class MovieLibraryDataService: NSObject, UITableViewDelegate,UITableViewDataSource {
  var movieManager : MovieManager!
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    return cell
  }
  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }
}
