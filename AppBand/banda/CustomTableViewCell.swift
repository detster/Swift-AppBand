//
//  CustomTableViewCell.swift
//  AppBand
//
//  Created by Catalina on 25/03/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var albumName: UILabel!
    @IBOutlet weak var albumAnio: UILabel!
    @IBOutlet weak var toCanciones: UIButton!
    var index:Int=0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
