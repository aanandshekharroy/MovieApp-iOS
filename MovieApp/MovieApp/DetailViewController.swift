//
//  DetailViewController.swift
//  MovieApp
//
//  Created by Rashi Karanpuria on 08/12/17.
//  Copyright © 2017 Rashi. All rights reserved.
//

import Foundation
import UIKit
class DetailViewController : UIViewController{
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var posterPath: UIImageView!
    
    @IBOutlet weak var overview: UILabel!
    
    var movie:Movie? = nil
    override func viewDidLoad() {
//        print(movie)
        movieName.text = movie?.title
        
        let url = URL(string:"http://image.tmdb.org/t/p/w185/\(movie!.poster_path)")
print("http://image.tmdb.org/t/p/w185/\(movie!.poster_path)")
//posterPath.image = UIImage(named:"tick")
        posterPath.kf.setImage(with: url)
        overview.text = movie?.overview
    }
}
