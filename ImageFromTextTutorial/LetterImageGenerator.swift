//
//  LetterImageGenerator.swift
//  ImageFromTextTutorial
//
//  Created by Matthew Howes Singleton on 7/30/17.
//  Copyright © 2017 Matthew Howes Singleton. All rights reserved.
//

import UIKit

class LetterImageGenerator: NSObject {
  class func imageWith(name: String?) -> UIImage? {
    let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    let nameLabel = UILabel(frame: frame)
    nameLabel.textAlignment = .center
    nameLabel.backgroundColor = .lightGray
    nameLabel.textColor = .white
    nameLabel.font = UIFont.boldSystemFont(ofSize: 40)
    var initials = ""
    if let initialsArray = name?.components(separatedBy: " ") {
      if let firstWord = initialsArray.first {
        if let firstLetter = firstWord.first {
          initials += String(firstLetter).capitalized
        }
      }
      if initialsArray.count > 1, let lastWord = initialsArray.last {
        if let lastLetter = lastWord.first {
          initials += String(lastLetter).capitalized
        }
      }
    } else {
      return nil
    }
    nameLabel.text = initials
    UIGraphicsBeginImageContext(frame.size)
    if let currentContext = UIGraphicsGetCurrentContext() {
      nameLabel.layer.render(in: currentContext)
      let nameImage = UIGraphicsGetImageFromCurrentImageContext()
      return nameImage
    }
    return nil
  }
}

