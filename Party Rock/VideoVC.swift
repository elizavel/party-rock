//
//  VideoVC.swift
//  Party Rock
//
//  Created by Eliza Vel Rosario on 28/08/2018.
//  Copyright © 2018 Eliza Velcom.eliza. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLable: UILabel!
    private var _partyRock: PartyRockM!
    
    
    var partyRock: PartyRockM{
        get{
            return _partyRock
        }set{
            _partyRock = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLable.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }
    
    

}
