//
//  kekkaViewController.swift
//  Gachalfors
//
//  Created by 森田貴帆 on 2020/09/16.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit

class kekkaViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var haikeiimageview:UIImageView!
    @IBOutlet var monsterimageview:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        //乱数を発生させる
        number = Int.random(in: 0...9)
        if number == 9{
            monsterimageview.image = UIImage(named: "monster010")
            haikeiimageview.image = UIImage(named: "bg_gold")
        }else if number > 7{
            monsterimageview.image = UIImage(named: "monster006")
            haikeiimageview.image = UIImage(named: "bg_red")
        }else{
            monsterimageview.image = UIImage(named: "monster003")
            haikeiimageview.image = UIImage(named: "bg_blue")
        }

    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
