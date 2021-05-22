//
//  Movie.swift
//  filmes_preferidos
//
//  Created by IFPB on 15/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import Foundation

class Movie: NSObject {
    var name: String
    var movieRating: Int
    var oscar: Bool
    var timesWatched: Int

    init(name: String, movieRating: Int, oscar: Bool, timesWatched: Int) {
        self.name = name
        self.movieRating = movieRating
        self.oscar = oscar
        self.timesWatched = timesWatched
    }
}
