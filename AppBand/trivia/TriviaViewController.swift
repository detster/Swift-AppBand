//
//  TriviaViewController.swift
//  AppBand
//
//  Created by Catalina on 24/03/21.
//

import UIKit

let questions = ["Big Javi es el vocalista?","Inspector nacio en 1996?","Su ultimo album es Paginas en blanco?","Tocan Rock?"]
let questionsResults = [true,false,true,true]
var resultToSend = true
class TriviaViewController: UIViewController {

    @IBOutlet weak var trivia: UITableView!
    @IBOutlet weak var revisar: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        trivia.delegate=self
        trivia.dataSource=self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        resultToSend=true
    }
    
    @IBAction func hacerRevision(_ sender: UIButton) {
        for item in 0...questions.count-1 {
            let path = IndexPath(item: item, section: 0)
            let cell = trivia.cellForRow(at: path) as? CustomTriviaTableViewCell
            if questionsResults[item] != cell?.answer{
                resultToSend=false
            }
        }
        if resultToSend {
            performSegue(withIdentifier: "trivia", sender: nil)
        }else{
            performSegue(withIdentifier: "badtrivia", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="trivia"{
            let vc = segue.destination as! ResultadosViewController
            vc.result=resultToSend
        }else if segue.identifier=="badtrivia" {
            let vc = segue.destination as! ResultadosBadViewController
            vc.result=resultToSend
        }
        
    }
}

extension TriviaViewController:UITableViewDelegate{
    public func tableView (_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

extension TriviaViewController:UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=trivia.dequeueReusableCell(withIdentifier: "cellquestions", for: indexPath) as! CustomTriviaTableViewCell
        cell.pregunta.text=questions[indexPath.row]
        return cell
    }
    
    
}

