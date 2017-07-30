//
//  ViewController.swift
//  ImageFromTextTutorial
//
//  Created by Matthew Howes Singleton on 7/30/17.
//  Copyright © 2017 Matthew Howes Singleton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var imgView: UIImageView!
  @IBOutlet weak var txtField: UITextField!
  @IBOutlet weak var btn: UIButton!
  

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.txtField.delegate = self
    imgView.image = nil
  }


  @IBAction func btnTapped(_ sender: UIButton) {
    
    imgView.image = LetterImageGenerator.imageWith(name: txtField.text)
    txtField.text = ""
  }

  
  

}





