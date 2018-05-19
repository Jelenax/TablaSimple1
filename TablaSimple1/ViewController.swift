//
//  ViewController.swift
//  TablaSimple1
//
//  Created by Angeles Jelena Lopez Fernandez on 18/05/18.
//  Copyright © 2018 Angeles Jelena Lopez Fernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 3 {
            return 2
        }
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = UITableViewCell(style: .default, reuseIdentifier: "idCell")
        
        let seccion = indexPath.section
        let fila = indexPath.row
        let mensaje = "Seccion \(seccion) Fila \(fila)"
        
        celda.textLabel!.text = mensaje
        
        return celda
    }
}

//MARK: UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let seccion = indexPath.section
        let fila = indexPath.row
        
        print("Selecciono la Seccion \(seccion) Fila \(fila)")
        
        let mensaje = "Seleccionaste la seccion \(seccion) fila \(fila)"
        
        let alerta = UIAlertController(title: "Tabla", message: mensaje, preferredStyle: .alert)
        
        alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        
        self.present(alerta, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
