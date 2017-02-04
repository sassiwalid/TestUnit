//
//  MovieLibraryDataServiceTests.swift
//  TestUnit
//
//  Created by Walid Sassi on 04/02/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import XCTest
@testable import TestUnit
class MovieLibraryDataServiceTests: XCTestCase {
  var sut : MovieLibraryDataService!
  var tableview : UITableView!
  
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
      sut = MovieLibraryDataService()
      tableview = UITableView()
      tableview.dataSource = sut
      tableview.delegate = sut
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
  // test number of sections in our tableview 
  func testNumberOfSections_shouldBeTwo(){
    let sectionCount = tableview.numberOfSections
    XCTAssertEqual(sectionCount, 2)
  }
  func testNumberOfRowsInSectionOne_shouldReturnMoviesToSeeCount(){
    sut.movieManager.addMovieToLibrary(movie: Movie(title: "Thriller", releaseDate: "\(Date())"))
    
  }
}
