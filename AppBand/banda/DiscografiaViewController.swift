//
//  DiscografiaViewController.swift
//  AppBand
//
//  Created by Catalina on 24/03/21.
//

import UIKit

var albumGlobal:Int=0


class DiscografiaViewController: UIViewController {

    @IBOutlet weak var imageAlbum: UIImageView!
    @IBOutlet weak var canciones: UITableView!
    var album:Int?
    var image:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        albumGlobal=album!
        print(album as Any)
        print(albumGlobal)
        imageAlbum.image=UIImage(named: image!)
        
        canciones.delegate=self
        canciones.dataSource=self
        // Do any additional setup after loading the view.
    }
}

extension DiscografiaViewController:UITableViewDelegate{
    public func cacnionesTableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension DiscografiaViewController:UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cancionesList[albumGlobal].count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cancioncell", for: indexPath) as! CustomDiscografiaTableViewCell
        cell.cancion.text=cancionesList[albumGlobal][indexPath.row]
        cell.duracion.text=duracionList[albumGlobal][indexPath.row]
        return cell
    }
}


let cancionesList = [["Blanco Y Negro","Misión Ska","Deja Ya De Mentir","Bailando Ska","Grito De Unión","Pánico 9:11 (instrumental)","Sueño Latino","Me Quedare Sin Nada","Dolor En El Sur","Araña Ska","Vampiros En La Tierra (Lugo)"],
    ["Amnesia","Como un Sol","Amargo Adiós","El Relato","Las Tijeras","Cara de Chango","Por Una Mujer","Rudeboy Stomper","Puedo Apostar","Sombras en el Frío",
    "Amargo Adiós (versión tequila)","Sin Rencor","Aguante"],
    ["Ska Voovee Boobie Baby","Cómo te extraño","Por última vez","No piensa en ti","Tan Grande","Lejos de casa","América latina","Isla Jamaica","Luna",    "Inspiracional","Te Fuiste","Tony Montana","Alma en fuego"],
    ["Pateando La Bola","Brindo Por Ti","El Tren","Sometimes","Donde Esta","El Dejado","Latino Rudeboy","Groove Remotion","Amar O Morir","El Roto, El Pobre, Y La Rumbera","Stupid Song (Bonus Track)"],
    ["Es por Ti","Y que","Gánster","Noviembre (Con Ely Guerra)","Mala Copa","Esta vez","Mentirosa","Bésame Mucho(Cover)","Mi Generación","Se hunde el barco",
    "Digo No","Realidad","Our House(Cover Madness)"],
    ["Me Estoy Enamorando","Osito Dormilón (con Tony Hernandez de El Gran Silencio)","Skasatschok","Fascination Street (con Nimrod)","Yo No Nací Para Amar",    "Te He Prometido","Nunca Digas Que No","My Girl","Lamba Do Ska (Llorando Se Fue)","¡Cuidado! (con Voodoo Glow Skulls)","El Año Víejo (con Celso Piña)","Bésame Mucho (En vivo En Café Iguana)"],
    ["Pánico","Sin Mirar Atrás","Convaleciente","Pasa la Vida","Páginas en Blanco","Como Ayer Contigo","Breve Historia de Amor y una Mujer","Busco Amor",    "Bailando Bailando","Ay Dolor"],
    ["Amnesia","Inspiracional","El Dejado","Las Tijeras","Y Que","Brindo Por Ti","Como Un Sol","Amar O Morir","Por Última Vez","Me Estoy Enamorando",    "Volvamos A Ser Novios"]]

let duracionList = [
    ["03:45","04:35","02:50","03:53","05:21","03:45","04:35","03:23","04:35","04:01","03:57","03:57","04:01"],
    ["03:23","03:57","04:21","03:47","02:50","03:23","04:01","03:30","04:23","05:23","05:23","03:53","04:21"],
    ["05:21","04:21","04:23","03:23","03:47","04:35","04:23","03:30","05:23","04:01","04:35","04:03","04:23"],
    ["03:10","04:03","05:21","03:57","03:45","03:47","03:53","03:45","04:35","03:45","04:35","05:21","03:47"],
    ["03:10","03:47","04:21","03:47","04:35","03:53","03:47","03:10","03:53","03:23","04:03","03:30","04:03"],
    ["05:21","02:50","03:30","03:53","04:21","03:53","05:23","03:47","03:45","03:57","03:45","03:23","03:10"],
    ["04:03","04:03","03:47","03:47","03:57","04:01","04:21","03:47","03:10","04:07","03:45","04:35","03:45"],
    ["03:30","04:01","04:07","04:23","05:21","03:57","04:03","04:07","04:07","03:47","03:45","03:45","04:35"]]
