
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
  
  @IBOutlet weak var playButton: UIButton!
  
  @IBOutlet weak var prevButton: UIButton!
  
  @IBOutlet weak var goButton: UIButton!
  
  
  @IBAction func onTapImage(_ sender: Any) {
    
    // セグエを使用して画面を遷移させる
    performSegue(withIdentifier: "result", sender: nil)
  
    
    
  }
  
  // 画像の名前の配列
  let imageNameArray = ["niku-zushi.jpeg","yakiniku.jpg", "steak.jpg"]
  
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
  
  var timer: Timer? = nil
  
  func timerCall() {
    // 次の画像を表示
  }
  
  
 
  @IBAction func onAct(_ sender: Any) {
    
    if timer == nil { // タイマー起動
      timer = Timer.scheduledTimer(timeInterval:2.0, target: self, selector: #selector(onNext), userInfo: nil, repeats:true)
      
      // タイトルを変更する（再生から一時停止）
      goButton.setTitle("一時停止", for: .normal)
      
      // 進むボタンを使用不可にする
      playButton.isEnabled = false
      
      // 戻るボタンを使用不可にする
      prevButton.isEnabled = false

    }
    
    else { // タイマー停止
      
      // タイマーを停止させる
      timer?.invalidate()
      timer = nil
      
      // ボタンのタイトルを変更する（一時停止から再生）
      goButton.setTitle("再生", for: .normal)
      
      // 進むボタンを使用可にする
      playButton.isEnabled = true
      
      // 戻るボタンを使用可にする
      prevButton.isEnabled = true
      
    
    }
  
  }
  
  // 表示している画像の番号
  var dispImageNo = 0
  
  // 表示している画像の番号を基に画像を表示する
  func displayImage() {
    

    
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
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    // segueから遷移先のResultViewControllerを取得する
    let resultViewController: ResultViewController = segue.destination as! ResultViewController
    
    // 遷移先のResultViewControllerで宣言している値を代入して渡す
    let name = imageNameArray[dispImageNo]
    resultViewController.name = name
    
  }
  
  //他の画面からsegueを使って戻ってきたときに呼ばれる
  @IBAction func unwind(segue: UIStoryboardSegue){
  }
  
}

