//
//  SouvenirsViewController.swift
//  AppBand
//
//  Created by Catalina on 24/03/21.
//

import UIKit

let souvenirsItems = ["1_blanco_y_negro","2_alma_en_fuego","3_unidad_cerveza_ska","4_amar_o_morir","5_inspector"]
let prices =
    [100.00,200.00,300.00,400.00,500.00,300.00,200.00,100.00]
let souvenirsNames =
    ["Disco 1","Disco 2","Disco 3","Disco 4","Disco 5","Disco 6","Disco 7","Disco 8"]

class SouvenirsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var promoCode: UITextField!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var souvenirs: UITableView!
    var compraCantidad = [String]()
    var compraID = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        souvenirs.delegate=self
        souvenirs.dataSource=self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        compraCantidad = [String]()
        compraID = [Int]()
    }
    

    @IBAction func buy(_ sender: UIButton) {
        totalPrice=0
        for item in 0...souvenirsItems.count-1 {
            let path = IndexPath(item: item, section: 0)
            let cell = souvenirs.cellForRow(at: path) as? CustomSouvenirsTableViewCell
            print(cell?.nameLabel.text as Any)
            if cell?.cantidadLabel.text != "0"{
                let str=cell?.cantidadLabel.text!
                
                print(str!)
                
                let a:Double? = Double(str!)
                totalPrice += Double(a! * prices[item])
                compraCantidad.append(str!)
                compraID.append(item)
            }
        }
        if(compraCantidad.isEmpty){
            let alerta = UIAlertController(title: "Error", message: "No items", preferredStyle: .alert)
            alerta.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(alerta, animated: true, completion: nil)
        }else{
            if promoCode.text ==  "INS-1923"{
                totalPrice = totalPrice - (totalPrice*0.35)
            }
            performSegue(withIdentifier: "souvenirs", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="souvenirs"{
            let vc = segue.destination as! CompraViewController
            vc.compraCantidad = compraCantidad
            vc.compraID = compraID
            
        }
    }
    
}

extension SouvenirsViewController:UITableViewDelegate{
    public func tableView (_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

extension SouvenirsViewController:UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return souvenirsItems.count
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=souvenirs.dequeueReusableCell(withIdentifier: "souvenirscell", for: indexPath) as! CustomSouvenirsTableViewCell
        cell.nameLabel.text=souvenirsNames[indexPath.row]
        cell.priceLabel.text="$"+String(prices[indexPath.row])
        cell.cantidadLabel.text="0"
        cell.imageView?.image=UIImage(named: souvenirsItems[indexPath.row])
        return cell
    }
    
    
}
