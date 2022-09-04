//
//  TableViewCell.swift
//  GoEvaproject
//
//  Created by Deepak Singh Shekhawat on 14/07/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var lblname: UILabel!
    @IBOutlet var image2: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
