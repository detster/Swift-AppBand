//
//  CustomSouvenirsTableViewCell.swift
//  AppBand
//
//  Created by Catalina on 26/03/21.
//

import UIKit

class CustomSouvenirsTableViewCell: UITableViewCell {

    @IBOutlet weak var addButton: UIStepper!
    @IBOutlet weak var cantidadLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageSouvenir: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func changeCantidad(_ sender: UIStepper) {
        cantidadLabel.text=String(Int(sender.value))
    }
}
