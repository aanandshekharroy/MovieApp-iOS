//
//  DataManager.swift
//  MovieApp
//
//  Created by Rashi Karanpuria on 06/12/17.
//  Copyright © 2017 Rashi. All rights reserved.
//

import Foundation
class DataManager  {
    func setGenre(_ genre:String){
        UserDefaults.standard.set(genre, forKey: Constants.GENRE)
    }
    func getGenre()->String{
        return UserDefaults.standard.string(forKey: Constants.GENRE)!
    }
    func setDisplay(_ displayType:String){
        UserDefaults.standard.set(displayType, forKey: Constants.DISPLAY)
    }
    func getDisplay()->String{
        return UserDefaults.standard.string(forKey: Constants.DISPLAY)!
    }
    
}
