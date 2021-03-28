//
//  CustomCompraTableViewCell.swift
//  AppBand
//
//  Created by Catalina on 26/03/21.
//

import UIKit

class CustomCompraTableViewCell: UITableViewCell {

    @IBOutlet weak var imageSuvenir: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var resumeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
