//
//  ViewController.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 4/4/24.
//

import UIKit


class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.horoscopeTable.delegate = self
        self.horoscopeTable.dataSource = self
       // horoscopeTable.rowHeight = 130  ---> para altura de celda sin hacer función.
        
        
       
        
        
        
        
    }
    
    /*override func viewWillAppear(<#T##animated: Bool##Bool#>)
     super.viewWillAppear(animated)
    
    horoscopeTable.reloadData()
    }*/
    
    
    
    @IBOutlet var horoscopeTable: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : HoroscopeViewCell = horoscopeTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HoroscopeViewCell
        cell.titleLabel?.text = list[indexPath.row].name
        cell.subTitleLabel?.text = list[indexPath.row].date
        cell.signImageView?.image = list [indexPath.row].image
        return cell
    }
    
    
    
    
    //para altura tabla de diferentes tamaños de celdas
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
    return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(list[indexPath.row])
        horoscopeTable.deselectRow(at: indexPath, animated: true)
        
        
    }
    
    //al ir a otra pantalla y pasar parametros
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        // es como un if pero para cuando puede devolver nulos
        
        guard let indexPath =  horoscopeTable.indexPathForSelectedRow else {
            print("No horoscope selected")
            return
        }
        
        let horoscope = list[indexPath.row]
        let viewController: DetailViewController = segue.destination as! DetailViewController
        
        //declaro var en Detail
        viewController.horoscope = horoscope
        
        
        
    }

}

