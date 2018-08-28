//
//  ViewController.swift
//  Party Rock
//
//  Created by Eliza Vel Rosario on 21/08/2018.
//  Copyright © 2018 Eliza Velcom.eliza. All rights reserved.
//

import UIKit

class PartyRockVC: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRockM]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlTest1 = "<iframe width=\"358\" height=\"250\" src=\"https://www.youtube.com/embed/o3lohh-TVJA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"
        
        let imageURL1 = "https://i.ytimg.com/vi/o3lohh-TVJA/hqdefault.jpg?sqp=-oaymwEWCNIBEHZIWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBYvHcdJAc8mjCTMmBIq1PVizv9lQ"
        
        let videoTitle1 = "Tagpuan"
        
        let urlTest2 = "<iframe width=\"358\" height=\"250\" src=\"https://www.youtube.com/embed/Ft99Pqbp7MQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"
        
        
        let imageURL2 = "https://i.ytimg.com/vi/Ft99Pqbp7MQ/hqdefault.jpg?sqp=-oaymwEWCNIBEHZIWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBLn9m_m0xxsx4ybN9EyBGHL2oUMA"
        
        let videoTitle2 = "Magbalik"
        
        let urlTest3 = "<iframe width=\"358\" height=\"250\" src=\"https://www.youtube.com/embed/Ft99Pqbp7MQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"
        
        
        let imageURL3 = "https://i.ytimg.com/vi/Ft99Pqbp7MQ/hqdefault.jpg?sqp=-oaymwEWCNIBEHZIWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBLn9m_m0xxsx4ybN9EyBGHL2oUMA"
        
        let videoTitle3 = "Magbalik"
        
        
        let urlTest4 = "<iframe width=\"358\" height=\"250\" src=\"https://www.youtube.com/embed/Ft99Pqbp7MQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"
        
        
        let imageURL4 = "https://i.ytimg.com/vi/Ft99Pqbp7MQ/hqdefault.jpg?sqp=-oaymwEWCNIBEHZIWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBLn9m_m0xxsx4ybN9EyBGHL2oUMA"
        
        let videoTitle4 = "Magbalik"
        
        let urlTest5 = "<iframe width=\"358\" height=\"250\" src=\"https://www.youtube.com/embed/Ft99Pqbp7MQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"
        
        
        let imageURL5 = "https://i.ytimg.com/vi/Ft99Pqbp7MQ/hqdefault.jpg?sqp=-oaymwEWCNIBEHZIWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBLn9m_m0xxsx4ybN9EyBGHL2oUMA"
        
        let videoTitle5 = "Magbalik"
        
        let urlTest6 = "<iframe width=\"358\" height=\"250\" src=\"https://www.youtube.com/embed/o3lohh-TVJA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"
        
        let imageURL6 = "https://i.ytimg.com/vi/o3lohh-TVJA/hqdefault.jpg?sqp=-oaymwEWCNIBEHZIWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBYvHcdJAc8mjCTMmBIq1PVizv9lQ"
        
        let videoTitle6 = "Tagpuan"
        
        
        let p1 = PartyRockM(imageURL: imageURL1, videoURL: urlTest1, videoTitle: videoTitle1)
        
        let p2 = PartyRockM(imageURL: imageURL2, videoURL: urlTest2, videoTitle: videoTitle2)
        
        let p3 = PartyRockM(imageURL: imageURL3, videoURL: urlTest3, videoTitle: videoTitle3)
        
        let p4 = PartyRockM(imageURL: imageURL4, videoURL: urlTest4, videoTitle: videoTitle4)
        
        let p5 = PartyRockM(imageURL: imageURL5, videoURL: urlTest5, videoTitle: videoTitle5)
        
        let p6 = PartyRockM(imageURL: imageURL6, videoURL: urlTest6, videoTitle: videoTitle6)
        
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        partyRocks.append(p6)
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("PartyCell", forIndexPath: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.UpdateUI(partyRock)
            
            return cell
            
        }else{
            return UITableViewCell()
            
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegueWithIdentifier("VideoVC", sender: partyRock)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as? VideoVC{
            if let party = sender as? PartyRockM{
                destination.partyRock = party
                
            }
        }
    }
}

