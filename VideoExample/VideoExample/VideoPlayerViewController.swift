//
//  VideoPlayerViewController.swift
//  VideoExample
//
//  Created by mac on 2018. 5. 5..
//  Copyright © 2018년 StudioKJ. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class VideoPlayerViewController: UIViewController {

    @IBOutlet var playerView: YTPlayerView!
    var videoLink : String?
    var videoTitle : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.playerView.load(withVideoId: videoLink!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
