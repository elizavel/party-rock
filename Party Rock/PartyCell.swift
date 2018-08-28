//
//  PartyCell.swift
//  Party Rock
//
//  Created by Eliza Vel Rosario on 28/08/2018.
//  Copyright © 2018 Eliza Velcom.eliza. All rights reserved.
//

import UIKit
import Dispatch
import Foundation

class PartyCell: UITableViewCell {
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func UpdateUI(partyRock: PartyRockM){
        
        videoTitle.text = partyRock.videoTitle
        
        do{
            let url = NSURL ( string: partyRock.imageURL)
            let data =  NSData(contentsOfURL: url!)
            self.videoPreviewImage.image = UIImage(data: data!)
        }
    }

}
