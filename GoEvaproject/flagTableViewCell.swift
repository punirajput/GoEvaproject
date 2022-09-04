//
//  flagTableViewCell.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 18/07/22.
//

import UIKit

class flagTableViewCell: UITableViewCell {

    @IBOutlet var countryname: UILabel!
    @IBOutlet var countryimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
