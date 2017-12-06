//
//  ViewController.swift
//  MovieApp
//
//  Created by Rashi Karanpuria on 06/12/17.
//  Copyright © 2017 Rashi. All rights reserved.
//

import UIKit

class MoviewViewController: UIViewController {
    let movies = [Movie]()
    let dataManager = DataManager()
    override func viewDidLoad() {
        super.viewDidLoad()
//        dataManager
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension MoviewViewController:UITableViewDelegate,UITableViewDataSource{
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseId = "movie_reuse_id"
        let movie = movies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseId) as UITableViewCell!
        cell?.textLabel?.text = movie.title
//        cell?.imageView?.image = UIImage(
    }
}

