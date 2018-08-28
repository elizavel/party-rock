//
//  PartyRockM.swift
//  Party Rock
//
//  Created by Eliza Vel Rosario on 22/08/2018.
//  Copyright © 2018 Eliza Velcom.eliza. All rights reserved.
//

import Foundation

class PartyRockM {
    
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String{
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    
    init(imageURL: String, videoURL: String, videoTitle: String){
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
    

    
}