//
//  LoaderTableViewCell.swift
//  ContentPlaceholderLoader
//
//  Created by Sufalam 4 on 02/05/18.
//  Copyright © 2018 Sufalam 4. All rights reserved.
//

import UIKit

class LoaderTableViewCell: UITableViewCell {

    @IBOutlet weak var ImgPofile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var txtviewAddress: UITextView!
    
    @IBOutlet weak var lblAbout: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
