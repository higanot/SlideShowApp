//
//  ViewController.swift
//  SlideShowApp
//
//  Created by 日向野卓也 on 2017/03/20.
//  Copyright © 2017年 GitHubhiganot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var nextButton: UIButton!
  
  @IBOutlet weak var backButton: UIButton!
  
  @IBOutlet weak var imageView: UIImageView!
  
  let imageArray = [UIImage(named:"niku-zushi.jpeg"), UIImage(named:"yakiniku.jpeg"), UIImage(named:"steak.jpg")]
  
  var imageIndex = 0
  
  @IBAction func showNextImage(_ sender: Any) {
    
    // 次のイメージを切り替える
    imageIndex += 1
    
    if imageIndex <= imageArray[imageIndex]
    imageView.image = nextImage
    
  }
  
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

