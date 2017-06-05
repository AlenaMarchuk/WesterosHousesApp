//
//  AboutViewController.swift
//  ListViewApp_AlenaMarchuk
//
//  Created by alena on 5/13/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var aboutBckgImage: UIImageView!
    @IBOutlet weak var aboutImage: UIImageView!
    @IBOutlet weak var aboutName: UILabel!
    @IBOutlet weak var aboutText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.aboutImage.image = #imageLiteral(resourceName: "alena")
        self.aboutName.text = "Alena Marchuk"
        self.aboutText.text = "Alena is a first-year student at De Anza studying programming in C/C++, Java and Linux/Unix OS. She enjoys spending time with her family, as well as reading and watching American football."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
