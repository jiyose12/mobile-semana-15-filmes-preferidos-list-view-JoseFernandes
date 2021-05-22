//
//  Register.swift
//  filmes_preferidos
//
//  Created by IFPB on 15/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import Foundation

class Register {
    private var movieList: Array<Movie>
    
    init() {
        self.movieList = Array()
    }
    
    func add(movie: Movie) {
        self.movieList.append(movie)
    }
    
    func count() -> Int {
        return self.movieList.count
    }
    
    func get() -> Array<Movie> {
        return self.movieList
    }
    
    func get(index: Int) -> Movie {
        return self.movieList[index]
    }
    
    func del(index: Int) {
        self.movieList.remove(at: index)
    }
    
    func mov(de: Int, para: Int){
        let aux = self.movieList[de]
        let aux2 = self.movieList[para]
        self.movieList[para] = aux
        self.movieList[de] = aux2
    }
    
    func update(index: Int, movie: Movie){
        self.movieList[index] = movie
    }
}
