//
//  MovieManagerTests.swift
//  TestUnit
//
//  Created by Walid Sassi on 30/01/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import XCTest
@testable import TestUnit
class MovieManagerTests: XCTestCase {
  var sut:MovieManager!
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = MovieManager()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
  func testMoviesToSeeCount_ReturnsZero(){
  
    XCTAssertEqual(sut.moviesToSeeCount, 0)
  }
  func testMoviesSeenCount_ReturnZero(){
    XCTAssertEqual(sut.moviesSeenCount, 0)
  }
  func testMoviesToSeeCount_ShouldReturnOneAfterAdd(){
    sut.addMovieToLibrary(movie:Movie(title:"Science fiction",releaseDate:"12/12/1990"))
    XCTAssertEqual(sut.moviesToSeeCount, 1)
    
  }
  func testMovieAtIndex_ReturnLastAddedMovie(){
    let movie = Movie(title: "Action", releaseDate: "Today")
    sut.addMovieToLibrary(movie: movie)
    let returnedMovieAtIndex = sut.movieAtIndex(index: 0)
    XCTAssertEqual(movie.title, returnedMovieAtIndex.title)
    
  }
  func testFavoriteMovie_UpdateMovieToSeenCountAndMoviesToSeeCount(){
    sut.addMovieToLibrary(movie:Movie(title:"Adventure",releaseDate:"12/12/1990"))
    sut.favoriteMovieAtIndex(index:0)
    XCTAssertEqual(sut.moviesSeenCount, 1)
    XCTAssertEqual(sut.moviesToSeeCount, 0)
  }
  func testFavoriteMovie_ShouldRemoveMovieFromMovieToSeeArray(){
    let movie1 = Movie(title: "Thriller", releaseDate: "Today")
    let movie2 = Movie(title: "My Adventure", releaseDate: "Today")
    sut.addMovieToLibrary(movie: movie1)
    sut.addMovieToLibrary(movie: movie2)
    sut.favoriteMovieAtIndex(index: 0)
    XCTAssertEqual(sut.movieAtIndex(index: 0).title, movie2.title)
  }
  func testfavoriteMovieAtIndex_shouldReturnFavoriteMovie(){
    let movie = Movie(title: "Thriller", releaseDate: "Today")
    sut.addMovieToLibrary(movie: movie)
    sut.favoriteMovieAtIndex(index: 0)
    let returnedFavoriteMovie = sut.favoritedMovieAtIndex(index:0)
    XCTAssertEqual(returnedFavoriteMovie.title, movie.title)
  }
  func testMovieEqual_ShouldReturnTrue(){
    let movie1 = Movie(title: "Action", releaseDate: "Today")
    let movie2 = Movie(title: "Action", releaseDate: "Today")
    XCTAssertEqual(movie1, movie2)
  }
  func testNotEqual_shouldReturnNotEqual(){
    let movie1 = Movie(title: "Action", releaseDate: "Today")
    let movie2 = Movie(title: "thriller", releaseDate: "Today")
    XCTAssertNotEqual(movie1, movie2)
    
  }
    
}
