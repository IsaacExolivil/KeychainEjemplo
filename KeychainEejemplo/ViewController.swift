//
//  ViewController.swift
//  KeychainEejemplo
//
//  Created by Isaac on 08/03/22.
//

import UIKit
import KeychainAccess

class ViewController: UIViewController {
    
    @IBOutlet weak var Puntaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let keychain = Keychain(service: "isaac.KeychainEejemplo")
        self.Puntaje.text = keychain["puntacion"]
    }
    
    @IBAction func guardar(_ sender: Any) {
        self.Puntaje.text = "Tu calificación es: 60"
        let puntaje = self.Puntaje.text
        
        //guardar keychain
        let keychain = Keychain(service: "isaac.KeychainEejemplo")
        keychain["puntacion"] = puntaje
    }
    

}

