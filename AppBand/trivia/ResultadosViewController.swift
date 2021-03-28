//
//  ResultadosViewController.swift
//  AppBand
//
//  Created by Catalina on 24/03/21.
//

import UIKit

class ResultadosViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var textTitle: UILabel!
    @IBOutlet weak var textMessage: UILabel!
    @IBOutlet weak var promoCode: UITextField!
    
    var result:Bool?
    var isResult:Bool=false
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
