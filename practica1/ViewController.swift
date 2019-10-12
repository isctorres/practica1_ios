//
//  ViewController.swift
//  practica1
//
//  Created by Isc. Torres on 10/12/19.
//  Copyright © 2019 isctorres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Titulo: UILabel!
    var objMoto : OtraMoto?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Titulo.text = "Super Fabrica de Motos";
    }

    @IBAction func btnCrear(_ sender: UIButton) {
        print("Se fabricó la moto")
        objMoto = OtraMoto()
    }
    
    
    @IBAction func btnPropiedades(_ sender: UIButton) {
        if objMoto != nil {
            let alert = UIAlertController(title: "Detalle de la Moto", message: "Mi moto es una \(objMoto!.modelo) y trae \(objMoto!.tanque) litros de gasolina", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Cerrar", style: .cancel, handler: nil))

            self.present(alert, animated: true)
        }
        else{
            print("La moto no se ha creado")
        }
    }
    
    
    @IBAction func btnPrender(_ sender: UIButton) {
        objMoto?.encender()
    }
    
    
    @IBAction func btnApagar(_ sender: UIButton) {
        objMoto?.apagar()
    }
    
    
    @IBAction func btnCargar(_ sender: UIButton) {
        objMoto?.cargarGasolina()
    }
}

