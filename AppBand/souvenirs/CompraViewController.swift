//
//  CompraViewController.swift
//  AppBand
//
//  Created by Catalina on 24/03/21.
//

import UIKit

var comprasArr = [String]()
var id = [Int]()
var totalPrice:Double=0
class CompraViewController: UIViewController {

    @IBOutlet weak var compras: UITableView!
    @IBOutlet weak var total: UITextField!
    
    var compraCantidad = [String]()
    var compraID = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        compras.delegate=self
        compras.dataSource=self
        comprasArr = compraCantidad
        id = compraID
        total.text = String(totalPrice)
        // Do any additional setup after loading the view.
    }


}
extension CompraViewController:UITableViewDelegate{
    public func tableView (_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

extension CompraViewController:UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return id.count
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=compras.dequeueReusableCell(withIdentifier: "buycell", for: indexPath) as! CustomCompraTableViewCell
        let a:Double? = Double(comprasArr[indexPath.row])
        let subtotal = prices[id[indexPath.row]] * a!
        cell.titleLabel.text=souvenirsNames[id[indexPath.row]]+" ("+comprasArr[indexPath.row]+")"
        cell.priceLabel.text=String(prices[id[indexPath.row]])
        cell.resumeLabel.text="SubTotal: "+String(subtotal)
        cell.imageView?.image=UIImage(named: souvenirsItems[id[indexPath.row]])
        cell.imageView?.sizeToFit()
        return cell
    }
    
    
}
