//
//  AddViewController.swift
//  ListViewApp_AlenaMarchuk
//
//  Created by alena on 6/5/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit
import CoreData

class AddViewController: UIViewController {
    
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterSigil: UITextField!
    @IBOutlet weak var enterWords: UITextField!
    @IBOutlet weak var enterFounding: UITextField!
    @IBOutlet weak var enterOverlord: UITextField!
    
    var newHouse : HouseMO!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickAdd(_ sender: Any) {
        
        if enterName == nil{
            enterName.text = ""
        }
        
        if enterWords == nil{
            enterWords.text = ""
        }
        
        if enterFounding == nil{
            enterFounding.text = ""
        }
        
        /*
         
         newHouse(House(name: self.enterName.text!, sigil: UIImage(named: self.enterSigil.text!)!, words: self.enterWords.text!,
         founded: self.enterFounding.text!, overlord: [UIImage(named: self.enterOverlord.text!)!]))
         */
        
        if let appDelegate = (UIApplication.shared.delegate as? AppDelegate){
            newHouse = HouseMO(context: appDelegate.persistentContainer.viewContext)
            
            newHouse.name = enterName.text!
            newHouse.sigil = NSData(data: UIImagePNGRepresentation(UIImage(named: enterSigil.text!)!)!)
            newHouse.words = enterWords.text!
            newHouse.founded = enterFounding.text!
            newHouse.overlord = NSData(data: UIImagePNGRepresentation(UIImage(named: enterOverlord.text!)!)!)
            
            appDelegate.saveContext()
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clickCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
