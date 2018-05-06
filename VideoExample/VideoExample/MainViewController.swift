//
//  MainViewController.swift
//  VideoExample
//
//  Created by mac on 2018. 5. 4..
//  Copyright © 2018년 StudioKJ. All rights reserved.
//

import UIKit
import XCGLogger
import youtube_ios_player_helper
import Kingfisher

class MainViewController: UITableViewController {
    
    @IBOutlet var videoListView: UITableView!
    let videoIds = ["0mr159ZGu4o","l2nZk6O9Jb8","dTqXMF3FKfw","39DwXDheH1o"]
    let videoTitle = ["Street Fighter 30th Anniversary Collection Retrospective Series –\nStreet Fighter I & II","Street Fighter 30th Anniversary Collection -\nRetrospective Series: Street Fighter I & II | PS4","Street Fighter 30th Anniversary Collection\n[Switch/PS4/XOne/PC] Xbox One Gameplay Trailer","SOULCALIBUR 6 - Nightmare vs Mitsurugi [4K Ultra HD]"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoIds.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell") as? MainViewCell{
            let link = "http://img.youtube.com/vi/\(videoIds[indexPath.row])/0.jpg"
            cell.viewImage!.kf.setImage(with: URL(string: link))
            cell.viewTitle.text = self.videoTitle[(indexPath.row)]
            return cell
        }
        return UITableViewCell()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "videoDetail" {
            let indexPath = self.videoListView!.indexPathForSelectedRow
            let destinationViewController: VideoPlayerViewController = segue.destination as! VideoPlayerViewController
            destinationViewController.videoLink = self.videoIds[(indexPath?.row)!]
            destinationViewController.videoTitle = self.videoTitle[(indexPath?.row)!]
        }
    }
}
