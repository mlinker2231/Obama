//
//  ViewController.swift
//  NothingButton
//
//  Created by Michael Linker on 8/21/18.
//  Copyright © 2018 John Hersey Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TL: UIButton!
    @IBOutlet weak var TM: UIButton!
    @IBOutlet weak var TR: UIButton!
    @IBOutlet weak var CL: UIButton!
    @IBOutlet weak var CM: UIButton!
    @IBOutlet weak var CR: UIButton!
    @IBOutlet weak var BL: UIButton!
    @IBOutlet weak var BM: UIButton!
    @IBOutlet weak var BR: UIButton!
    @IBOutlet weak var VictoryLabel: UILabel!
    @IBOutlet weak var WinButton: UIButton!
    @IBOutlet weak var Rando: UIButton!
    var BoR = false
    var BoM = false
    var BoL = false
    var CeR = false
    var CeM = false
    var CeL = false
    var ToR = false
    var ToM = false
    var ToL = false
    override func viewDidLoad() {
        super.viewDidLoad()
        var allGreen = ToR && ToM && ToL && CeR && CeL && CeM && BoM && BoL && BoR
    }
    let Sequence = 1...100
    func PickNumber() -> Int {
        var randomNumber = Sequence.randomElement()
        if randomNumber! % 2 == 1 {
            var isOdd = true
            while isOdd {
                randomNumber = Sequence.randomElement()
                if randomNumber! % 2 == 0 {
                    isOdd = false
                }
            }
        }else {
            var isEven = true
        }
        return randomNumber!
    }
    @IBAction func Random(_ sender: Any) {
        let randomNumber1 = PickNumber()
        Rando.setTitle(String(randomNumber1), for: .normal)
        
        
    }
    @IBAction func Topleft(_ sender: Any) {
        ToM = !ToM
        CeL = !CeL
        ToL = !ToL
        if CeL {CL.backgroundColor = UIColor.green
            
        }else {CL.backgroundColor = UIColor.red
            
        }
        if ToM {TM.backgroundColor = UIColor.green
            
        }else {TM.backgroundColor = UIColor.red
            
        }
        ToL ? (TL.backgroundColor = UIColor.green):(TL.backgroundColor = UIColor.red)
        
    }
    @IBAction func TopMiddle(_ sender: Any) {
        ToL = !ToL
        CeM = !CeM
        ToR = !ToR
        ToM = !ToM
        if ToL {TL.backgroundColor = UIColor.green
            
        }else {TL.backgroundColor = UIColor.red
        }
        if CeM {CM.backgroundColor = UIColor.green
            
        }else {CM.backgroundColor = UIColor.red
        }
        if ToR {TR.backgroundColor = UIColor.green
            
        }else {TR.backgroundColor = UIColor.red
        }
        if ToM {TM.backgroundColor = UIColor.green
            
        }else {TM.backgroundColor = UIColor.red
            
        }
    }
    @IBAction func TopRight(_ sender: Any) {
        ToM = !ToM
        CeR = !CeR
        ToR = !ToR
        if ToM {TM.backgroundColor = UIColor.green
            
        }else {TM.backgroundColor = UIColor.red
        }
        if CeR {CR.backgroundColor = UIColor.green
            
        }else {CR.backgroundColor = UIColor.red
        }
        if ToR {TR.backgroundColor = UIColor.green
            
        }else {TR.backgroundColor = UIColor.red
        }
    }
    @IBAction func CenterLeft(_ sender: Any) {
        ToL = !ToL
        CeM = !CeM
        BoL = !BoL
        CeL = !CeL
        if ToL {TL.backgroundColor = UIColor.green
            
        }else {TL.backgroundColor = UIColor.red
        }
        if CeM {CM.backgroundColor = UIColor.green
            
        }else {CM.backgroundColor = UIColor.red
        }
        if BoL {BL.backgroundColor = UIColor.green
            
        }else {BL.backgroundColor = UIColor.red
        }
        if CeL {CL.backgroundColor = UIColor.green
            
        }else {CL.backgroundColor = UIColor.red
        }
        
    }
    @IBAction func CenterMiddle(_ sender: Any) {
        ToM = !ToM
        CeL = !CeL
        CeR = !CeR
        BoM = !BoM
        CeM = !CeM
        if ToM {TM.backgroundColor = UIColor.green
            
        }else {TM.backgroundColor = UIColor.red
        }
        if CeL {CL.backgroundColor = UIColor.green
            
        }else {CL.backgroundColor = UIColor.red
        }
        if CeR {CR.backgroundColor = UIColor.green
            
        }else {CR.backgroundColor = UIColor.red
        }
        if BoM {BM.backgroundColor = UIColor.green
            
        }else {BM.backgroundColor = UIColor.red
        }
        if CeM {CM.backgroundColor = UIColor.green
            
        }else {CM.backgroundColor = UIColor.red
        }
    }
    @IBAction func CenterRight(_ sender: Any) {
        ToR = !ToR
        CeM = !CeM
        BoR = !BoR
        CeR = !CeR
        ToR ? (TR.backgroundColor = UIColor.green):(TR.backgroundColor = UIColor.red)
        CeM ? (CM.backgroundColor = UIColor.green):(CM.backgroundColor = UIColor.red)
        BoR ? (BR.backgroundColor = UIColor.green):(BR.backgroundColor = UIColor.red)
        if CeR {CR.backgroundColor = UIColor.green
            
        }else {CR.backgroundColor = UIColor.red
        }
    }
    
    @IBAction func BottomLeft(_ sender: Any) {
        CeL = !CeL
        BoM = !BoM
        BoL = !BoL
        CeL ? (CL.backgroundColor = UIColor.green):(CL.backgroundColor = UIColor.red)
        BoM ? (BM.backgroundColor = UIColor.green):(BM.backgroundColor = UIColor.red)
        BoL ? (BL.backgroundColor = UIColor.green):(BL.backgroundColor = UIColor.red)
    }
    @IBAction func BottomMiddle(_ sender: Any) {
        CeM = !CeM
        BoL = !BoL
        BoR = !BoR
        BoM = !BoM
        CeM ? (CM.backgroundColor = UIColor.green):(CM.backgroundColor = UIColor.red)
        BoL ? (BL.backgroundColor = UIColor.green):(BL.backgroundColor = UIColor.red)
        BoR ? (BR.backgroundColor = UIColor.green):(BR.backgroundColor = UIColor.red)
        BoM ? (BM.backgroundColor = UIColor.green):(BM.backgroundColor = UIColor.red)
    }
    @IBAction func BottomRight(_ sender: Any) {
        CeR = !CeR
        BoM = !BoM
        BoR = !BoR
        CeR ? (CR.backgroundColor = UIColor.green):(CR.backgroundColor = UIColor.red)
        BoM ? (BM.backgroundColor = UIColor.green):(BM.backgroundColor = UIColor.red)
        BoR ? (BR.backgroundColor = UIColor.green):(BR.backgroundColor = UIColor.red)
    }
    @IBAction func WhenButtonPressed(_ sender: Any) {
        var allGreen = ToR && ToM && ToL && CeR && CeL && CeM && BoM && BoL && BoR
        var Won = false
        if allGreen {VictoryLabel.text = "You Won"
            VictoryLabel.backgroundColor = UIColor.green
            VictoryLabel.font = UIFont.systemFont(ofSize: 25)
            WinButton.setTitle("Play Again?", for: .normal)
             Won = true
            allGreen = !allGreen
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
            self.BR.backgroundColor = UIColor.red
            self.BL.backgroundColor = UIColor.red
            self.BM.backgroundColor = UIColor.red
            self.CL.backgroundColor = UIColor.red
            self.CR.backgroundColor = UIColor.red
            self.CM.backgroundColor = UIColor.red
            self.TR.backgroundColor = UIColor.red
            self.TL.backgroundColor = UIColor.red
           self.TM.backgroundColor = UIColor.red
            self.BoR = false
            self.BoL = false
            self.BoM = false
            self.CeM = false
            self.CeR = false
                self.CeL = false
            self.ToR = false
            self.ToM = false
            self.ToL = false
            self.VictoryLabel.text = "You know what to do"
            self.VictoryLabel.backgroundColor = UIColor.darkGray
            self.WinButton.setTitle("Press Me!", for: .normal)
            Won = !Won
            self.Rando.isEnabled = true
                self.Rando.titleColor(for: .normal)
                self.Rando.backgroundColor = UIColor.blue
            })
        } else if ToM && CeM && BoM{
            VictoryLabel.text = "Nice laser Focus and secret fidning skills, you have unlocked the next stage...."
        
            
            performSegue(withIdentifier: "NewViewController", sender: sender)
            
          //  let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "NewViewController") as! ViewController
            
          //  self.navigationController?.pushViewController(newViewController, animated: true)
                    }
            else {VictoryLabel.text = "Cmon man get all the tiles green"}
       // if playAgain { allGreen = !allGreen
         //   BR.backgroundColor = UIColor.red
         //   BL.backgroundColor = UIColor.red
         //   BM.backgroundColor = UIColor.red
         //   CL.backgroundColor = UIColor.red
          //  CR.backgroundColor = UIColor.red
           // CM.backgroundColor = UIColor.red
          //  TR.backgroundColor = UIColor.red
         //   TL.backgroundColor = UIColor.red
        //    TM.backgroundColor = UIColor.red
         //   BoR = false
           // BoL = false
          //  BoM = false
          //  CeM = false
          //  CeR = false
          //  CeL = false
          //  ToR = false
           // ToM = false
           // ToL = false
         //   VictoryLabel.text = "You know what to do"
         //   VictoryLabel.backgroundColor = UIColor.darkGray
          //  WinButton.setTitle("Press Me!", for: .normal)
          //  allGreen = !allGreen
        }
    @IBAction func longPressed(_ sender: Any) {
        self.BR.backgroundColor = UIColor.red
        self.BL.backgroundColor = UIColor.red
        self.BM.backgroundColor = UIColor.red
        self.CL.backgroundColor = UIColor.red
        self.CR.backgroundColor = UIColor.red
        self.CM.backgroundColor = UIColor.red
        self.TR.backgroundColor = UIColor.red
        self.TL.backgroundColor = UIColor.red
        self.TM.backgroundColor = UIColor.red
        self.BoR = false
        self.BoL = false
        self.BoM = false
        self.CeM = false
        self.CeR = false
        self.CeL = false
        self.ToR = false
        self.ToM = false
        self.ToL = false
        self.VictoryLabel.backgroundColor = UIColor.darkGray
        self.WinButton.setTitle("Press Me!", for: .normal)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}


//}






