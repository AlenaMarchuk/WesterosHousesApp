//
//  MyDetailViewController.swift
//  ListViewApp_AlenaMarchuk
//
//  Created by alena on 5/13/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class MyDetailViewController: UIViewController {

    @IBOutlet weak var bkgdImage: UIImageView!
    @IBOutlet weak var sigilImage: UIImageView!
    @IBOutlet weak var houseText: UITextView!
    @IBOutlet weak var wordsText: UITextView!
    @IBOutlet weak var overlordLabel: UILabel!
    @IBOutlet weak var overlordImage: UIImageView!
    @IBOutlet weak var foundedText: UITextField!
    
    var HouseDetail : House!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.houseText.text = self.HouseDetail.name
        
        self.wordsText.text = self.HouseDetail.words
        self.foundedText.text = self.HouseDetail.founded
        navigationItem.title = self.houseText.text
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //Fly-in animation of the house sigil
        self.sigilImage.image = self.HouseDetail.sigil
        var rotationTransform : CATransform3D = CATransform3DIdentity
        rotationTransform = CATransform3DTranslate(rotationTransform, -250, -250, 0)
        self.sigilImage?.layer.transform = rotationTransform
        UIView.animate(withDuration: 4.0, animations: { self.sigilImage?.layer.transform = CATransform3DIdentity})
        
        //Fade-in animation of the overlords
        let width = 44
        let height = 49
        var xPos = 137
        let yPos = 453
        var aDur = 2.0
        var aDly = 2.0
        
        let totalOverlords = HouseDetail.overlord.count
        print(totalOverlords)
        
        for i in 0..<totalOverlords{
       
        let overlord = UIImageView()
        overlord.image = self.HouseDetail.overlord[i]
        overlord.frame = CGRect(x: xPos, y: yPos, width: width, height: height)
        self.view.addSubview(overlord)
        overlord.alpha = 0

        UIView.animate(withDuration: aDur, delay: aDly, options: [], animations:
        {
            overlord.alpha = 1
        }, completion: nil)
        xPos += 50
        aDur += 1.0
        aDly += 1.0
      }
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
