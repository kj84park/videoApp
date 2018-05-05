//
//  MainViewCell.swift
//  VideoExample
//
//  Created by mac on 2018. 5. 5..
//  Copyright © 2018년 StudioKJ. All rights reserved.
//

import UIKit

class MainViewCell: UITableViewCell {

    @IBOutlet var viewImage: UIImageView!
    
    func addVideoInfo(link : String){
         self.viewImage!.kf.setImage(with: URL(string: link))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
