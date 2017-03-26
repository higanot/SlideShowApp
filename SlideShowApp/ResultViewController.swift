//
//  ResultViewController.swift
//  SlideShowApp
//
//  Created by HT on 2017/03/21.
//  Copyright © 2017年 GitHubhiganot. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

  @IBOutlet weak var imageView2: UIImageView!
  
  var name : String!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      let image = UIImage(named:name)
      
      imageView2.image = image
      
        // Do any additional setup after loading the view.
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
