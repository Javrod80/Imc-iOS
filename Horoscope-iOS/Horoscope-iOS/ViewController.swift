//
//  ViewController.swift
//  Horoscope-iOS
//
//  Created by Mañanas on 4/4/24.
//

import UIKit


class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    
    
 
    
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
    
  

   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.horoscopeTable.delegate = self
        self.horoscopeTable.dataSource = self
       // horoscopeTable.rowHeight = 130  ---> para altura de celda sin hacer función.
        
        
        
        
        
        
        
    }
    
    @IBOutlet var horoscopeTable: UITableView!
    
    
    
    //para altura tabla de diferentes tamaños de celdas
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
    return 130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User selected cell....")
        
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        let indexPath =  horoscopeTable.indexPathForSelectedRow
        if (indexPath != nil){
            
            
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    


}

