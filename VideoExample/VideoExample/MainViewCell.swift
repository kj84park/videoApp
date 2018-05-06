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
    @IBOutlet var viewTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setConfigure(imageLink : String , title : String){
        self.imageView?.kf.setImage(with: URL(string: imageLink), placeholder: nil, options: nil, progressBlock: nil, completionHandler: { (image, error, cacheType, URL) in
            self.setNeedsLayout()
        })
        self.viewTitle.text = title
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
