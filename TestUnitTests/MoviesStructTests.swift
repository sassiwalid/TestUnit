//
//  MoviesStructTests.swift
//  
//
//  Created by Walid Sassi on 29/01/2017.
//
//

import XCTest
@testable import TestUnit
class MoviesStructTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
  func testInit_SetMovieTitle(){
    let movie = Movie(title : "test",releaseDate:"12/12/1976")
    XCTAssertEqual(movie.title, "test")
    
  }
  func testInit_SetReleaseDate(){
    let movie = Movie(title:"test",releaseDate:"12/12/1976")
    XCTAssertEqual(movie.releaseDate,"12/12/1976")
    
  }
    
}
