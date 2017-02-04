//
//  MoviesLibraryVCTests.swift
//  TestUnit
//
//  Created by Walid Sassi on 02/02/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import XCTest
@testable import TestUnit
class MoviesLibraryVCTests: XCTestCase {
  var sut:ViewController!
    override func setUp() {
        super.setUp()
      let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
      sut = storyboard.instantiateViewController(withIdentifier: "MovieLibray") as? ViewController
      _ = sut.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    // test if our VC had a tableview
  func testViewController_TableViewShouldNotBeNil(){
    XCTAssertNotNil(sut.tableView)
  }
  // test tableview datasource link
  func testViewController_TableViewDataSourceShouldNotBeNil(){
    XCTAssertNotNil(sut.tableView.dataSource)
    XCTAssertTrue(sut.tableView.dataSource is MovieLibraryDataService)
  }
  // test tableview delegate link
  func testViewController_TableViewDelegateShouldNotBeNil(){
    XCTAssertNotNil(sut.tableView.delegate)
    XCTAssertTrue(sut.tableView.dataSource is MovieLibraryDataService)
  }

}
