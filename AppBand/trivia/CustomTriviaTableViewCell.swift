//
//  CustomTriviaTableViewCell.swift
//  AppBand
//
//  Created by Catalina on 26/03/21.
//

import UIKit

class CustomTriviaTableViewCell: UITableViewCell {

    @IBOutlet weak var pregunta: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    var answer:Bool = true
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func respuesta(_ sender: UISwitch) {
        answer = !answer
    }
}
