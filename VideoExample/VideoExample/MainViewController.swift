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
    let videoIds = ["M7lc1UVf-VE"]
    
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
            cell.addVideoInfo(link: link)
            return cell
        }
        return UITableViewCell()
    }
}
