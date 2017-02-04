//
//  Movie.swift
//  TestUnit
//
//  Created by Walid Sassi on 29/01/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import Foundation

struct Movie :Equatable{
  let  title:String
  let releaseDate: String?
  
  init(title:String,releaseDate:String) {
    self.title = title
    self.releaseDate = releaseDate
  }

}
 // redefinition of the == operator to respect equatable protocol
// need to be outside the movie struct definition
func==(first:Movie,second:Movie)->Bool{
  if first.title != second.title{
    return false
  }
  return true
}
