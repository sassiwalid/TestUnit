//
//  MovieManager.swift
//  TestUnit
//
//  Created by Walid Sassi on 30/01/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import Foundation
class MovieManager {
  var moviesToSeeCount = 0
  var moviesSeenCount = 0
  var moviesArrayToSee = [Movie]()
  var moviesArraySeen = [Movie]()
  func addMovieToLibrary(movie:Movie){
    moviesToSeeCount += 1
    moviesArrayToSee.append(movie)
  }
  func movieAtIndex(index:Int)->Movie{
    return moviesArrayToSee[index]
  }
  func favoriteMovieAtIndex(index:Int){
    guard index < moviesArrayToSee.count else {return}
    moviesToSeeCount -= 1
    moviesSeenCount += 1
    let favoriteMovie = moviesArrayToSee.remove(at: index)
    moviesArraySeen.append(favoriteMovie)
  }
  func favoritedMovieAtIndex(index:Int)->Movie{
    return moviesArraySeen[index]
  }
}
