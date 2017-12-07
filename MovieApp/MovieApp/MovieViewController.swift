//
//  ViewController.swift
//  MovieApp
//
//  Created by Rashi Karanpuria on 06/12/17.
//  Copyright © 2017 Rashi. All rights reserved.
//

import UIKit
import Kingfisher
import Alamofire
import SwiftyJSON
class MovieViewController: UIViewController {
    let movies = [Movie]()
    let dataManager = DataManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://api.themoviedb.org/3/movie/popular?api_key=0105153be6c50857f2ec1ac9a3f65741&language=en-US&page=1")
            .response { response in
                
                print(response)
            
//                if  {
//                print("Data: \(data)")
//            }else{
//                print("none")
//            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension MovieViewController:UITableViewDelegate, UITableViewDataSource{
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseId = "movie_reuse_id"
        let movie = movies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseId) as UITableViewCell!
        cell?.textLabel?.text = movie.title
        cell?.imageView?.kf.setImage(with: URL(string:"http://image.tmdb.org/t/p/w185/\(movie.poster_path)"))
        return cell!
    }
}

