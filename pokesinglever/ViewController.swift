//
//  ViewController.swift
//  pokesinglever
//
//  Created by User on 2019/2/6.
//  Copyright © 2019 g87. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    @IBOutlet weak var mycard: ViewController!
    @IBOutlet weak var yourcard: ViewController!
    
    @IBOutlet var NUM1: UILabel!
    
    @IBOutlet var NUM2: UILabel!
    
    @IBOutlet var SUIT1: UILabel!
   
    @IBOutlet var SUIT2: UILabel!
    
    @IBOutlet weak var youwin: UILabel!
    @IBOutlet weak var mywin: UILabel!
    ////////////
    let suit = ["♣️" , "♦️", "♥️" ,"♠️"]
    let num = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]


    @IBAction func pick(_ sender: Any) {
        let randomDistribution1 = GKRandomDistribution(lowestValue: 0, highestValue: num.count - 1)
        let randomDistribution2 = GKRandomDistribution(lowestValue: 0, highestValue: suit.count - 1)
        let n1 = randomDistribution1.nextInt()
        var n2 = randomDistribution1.nextInt()
        let s1 = randomDistribution2.nextInt()
        var s2 = randomDistribution2.nextInt()
        while(n1 == n2 && s1 == s2){
            n2 = randomDistribution1.nextInt()
            s2 = randomDistribution2.nextInt()
        }
        getcard(mycard,n1,s1)
        getcard(yourcard,n2,s2)
        if(n1 > n2){
            mywin.isHidden = false
            youwin.isHidden = true
        }
        else if(n1 < n2){
            mywin.isHidden = true
            youwin.isHidden = false
        }
        else{
            if(s1 > s2){
                mywin.isHidden = false
                youwin.isHidden = true
            }
            else{
                mywin.isHidden = true
                youwin.isHidden = false
            }
        }
        }
    func getcard(_ Card:ViewController, _ n: Int,_ s:Int)  {
        Card.NUM1.isHidden = false
        Card.NUM2.isHidden = false
        Card.SUIT1.isHidden = false
        Card.SUIT2.isHidden = false
        Card.NUM1.text = num[n]
        Card.NUM2.text = num[n]
        Card.SUIT1.text = suit[s]
        Card.SUIT2.text = suit[s]    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

