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
    var movies = [Movie]()
    let dataManager = DataManager()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        Alamofire.request("https://api.themoviedb.org/3/movie/popular?api_key=0105153be6c50857f2ec1ac9a3f65741&language=en-US&page=1")
            .response { response in
                
                do{
                        let json = try  JSON(data: response.data!)
                    let movieArray = json["results"].array
                    for m in movieArray!{
                        self.movies.append(try Movie(parameter: m))
                    }
                    print(self.movies)
                    self.tableView.reloadData()
                }catch{
                    
                }
                
                
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
        if let detailTextLabel = cell?.detailTextLabel {
            detailTextLabel.text = movie.overview
        }
        return cell!
    }
}


