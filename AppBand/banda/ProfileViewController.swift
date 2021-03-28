//
//  ProfileViewController.swift
//  AppBand
//
//  Created by Catalina on 24/03/21.
//

import UIKit

let albums = ["Blanco Y Negro","Alma en Fuego","Unidad, Cerveza Y Ska","Amar O Morir","Inspector","Ska A La Carta","Páginas en Blanco","Inspección Retroacústica"]
let albumsAnio = ["(1998)","(2002)","(2004)","(2006)","(2009)","(2011)","(2018)","(2014)"]

let albumsImages = ["1_blanco_y_negro","2_alma_en_fuego","3_unidad_cerveza_ska","4_amar_o_morir","5_inspector","6_ska_a_la_carta","7_paginas_en_blanco","8_inspeccion_retroacustica"]
var albumToView = 0
var image = ""
class ProfileViewController: UIViewController {

    @IBOutlet weak var discografia: UITableView!
    @IBOutlet weak var profile: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profile.image=UIImage(named:"profile")
        discografia.delegate=self
        discografia.dataSource=self
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="profile"{
            let vc = segue.destination as! DiscografiaViewController
            vc.album=albumToView
            vc.image=image
        }
    }
}

extension ProfileViewController:UITableViewDelegate{
    public func tableView (_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        albumToView=indexPath.row
        image=albumsImages[indexPath.row]
        performSegue(withIdentifier: "profile", sender: nil)
    }
}

extension ProfileViewController:UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums.count
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=discografia.dequeueReusableCell(withIdentifier: "albumcell", for: indexPath) as! CustomTableViewCell
        cell.index = indexPath.row
        cell.albumAnio.text=albumsAnio[indexPath.row]
        cell.albumName.text=albums[indexPath.row]
        cell.imageView?.image=UIImage(named: albumsImages[indexPath.row])
        cell.imageView?.sizeToFit()
        return cell
    }
    
    
}
