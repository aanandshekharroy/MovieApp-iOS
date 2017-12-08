//
//  Movie.swift
//  MovieApp
//
//  Created by Rashi Karanpuria on 06/12/17.
//  Copyright © 2017 Rashi. All rights reserved.
//

import Foundation
import SwiftyJSON
protocol JSONable {
    init?(parameter: JSON)
}
struct Movie  {
    let title:String
    let overview : String
    let poster_path:String
     init(parameter: JSON) throws {
        title = parameter["title"].stringValue
        poster_path = parameter["poster_path"].stringValue
        overview = parameter["overview"].stringValue
    }
}
