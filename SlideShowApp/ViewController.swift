
//
//  ViewController.swift
//  SlideShowApp
//
//  Created by HT on 2017/03/20.
//  Copyright © 2017年 GitHubhiganot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var imageView: UIImageView!
  
  @IBAction func onTapImage(_ sender: Any) {
    
    // セグエを使用して画面を遷移させる
    performSegue(withIdentifier: "result", sender: nil)
    
  }
  
  @IBAction func onNext(_ sender: Any) {
  
    // 表示している画像の番号を1増やす
    dispImageNo += 1
    
    // 表示している画像の番号を基に画像を表示する
    displayImage()
    
  }
  


  @IBAction func onPrev(_ sender: Any) {

    // 表示している画像の番号を1減らす
    dispImageNo -= 1
    
    // 表示している画像の番号を基に画像を表示する
    displayImage()
    
  }
  
  @IBAction func onAct(_ sender: Any) {
  
    // 2.0秒間隔でアニメーションを遷移させる
    imageView.animationDuration = 2.0
    
    // 3回アニメーションを繰り返す
    imageView.animationRepeatCount = 3
    
    // アニメーションを開始する
    imageView.startAnimating()
    
    // アニメーションを終了する
    // imageView.stopAnimating()
    
    
  }
  
  
  // 表示している画像の番号
  var dispImageNo = 0
  
  // 表示している画像の番号を基に画像を表示する
  func displayImage() {
    
    // 画像の名前の配列
    let imageNameArray = ["niku-zushi.jpeg","yakiniku.jpg", "steak.jpg"]
    
    // 画像の番号が正常な範囲を指しているかチェック
    
    // 範囲より下を指している場合、最後の画像を表示
    if dispImageNo < 0 {
      dispImageNo = 2
    }
    
    // 範囲より上を指している場合、最初の画像を表示
    if dispImageNo > 2 {
      dispImageNo = 0
    }
    
    // 表示している画像の番号から名前を取り出し
    let name = imageNameArray[dispImageNo]
    
    //画像を読み込み
    let image = UIImage(named:name)
    
    // Image Viewに読み込んだ画像をセット
    imageView.image = image
    
  }
  
 
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let image = UIImage(named: "niku-zushi.jpeg")
    imageView.image = image
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //他の画面からsegueを使って戻ってきたときに呼ばれる
  @IBAction func unwind(segue: UIStoryboardSegue){
  }
  
}

