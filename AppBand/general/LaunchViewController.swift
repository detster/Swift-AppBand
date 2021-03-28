//
//  LaunchViewController.swift
//  AppBand
//
//  Created by lmanjarrez on 27/03/21.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBOutlet weak var frase: UILabel!
    let frases=[
        "Yo no bebo es el amor el que me hace beber",
        "El veneno no mata es la cantidad",
        "Si me llego a morir no la culpen a ella. Culpen a mi corazon que se enamoro sin conocerla"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomInt = Int.random(in: 0..<frases.count)
        print(randomInt)
        frase.text=frases[randomInt]
    }
    override func viewDidAppear(_ animated: Bool) {
        performSegue(withIdentifier: "mainsegue", sender: nil)
    }
    
}
