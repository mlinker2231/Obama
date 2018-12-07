//
//  NewViewController.swift
//  NothingButton
//
//  Created by Michael Linker on 11/15/18.
//  Copyright © 2018 John Hersey Highschool. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    var isSwitched1 = false
    var isSwitched2 = false
    var isSwitched3 = false
    var isSwitched4 = false
    var isSwitched5 = false
    var isSwitched6 = false
    var one = false
    var two = false
    var three = false
    var four = false
    var five = false
    var six = false
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBAction func Textfielda(_ sender: Any) {
        let alert3 = UIAlertController(title: "random", message: nil, preferredStyle: .alert)
    }
    @IBAction func AlertTwo(_ sender: Any) {
        let alert2 = UIAlertController(title: "This gone work too", message: nil, preferredStyle: .alert)
        let ItCool = UIAlertAction(title: "its gud", style: .destructive)
        alert2.addAction(ItCool)
        let noItAInt = UIAlertAction(title: "Stop", style: .destructive)
        alert2.addAction(noItAInt)
        alert2.addTextField(configurationHandler:{UITextField in UITextField.placeholder = "firstName"})
        alert2.addTextField(configurationHandler:{UITextField in UITextField.placeholder = "LastName"})
        let stop = UIAlertAction(title: "stop", style: .cancel) {ACTION in if let firstName = alert2.textFields![0].text, let lastName = alert2.textFields![1].text
        {print(firstName + " " + lastName)
            self.Label2.text = "hello"
            }

        }
                alert2.addAction(stop)


        present(alert2,animated: true,completion: nil)


    }
    @IBAction func Alert(_ sender: Any) {
        let alert = UIAlertController(title: "Its gonna work", message: nil, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(cancel)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        present(alert,animated: true,completion: nil)
    }

    @IBAction func Switch1(_ sender: Any) {
        isSwitched1 = !isSwitched1
        switch isSwitched1 {
        case true:
            one = !one
            three = !three
            five = !five
            two = !two
            four = !four
            six = !six
            one ? (Label1.backgroundColor = UIColor.green):(Label1.backgroundColor = UIColor.red)
            three ? (Label3.backgroundColor = UIColor.green):(Label3.backgroundColor = UIColor.red)
            five ? (Label5.backgroundColor = UIColor.green):(Label5.backgroundColor = UIColor.red)
            two ? (Label2.backgroundColor = UIColor.green):(Label2.backgroundColor = UIColor.red)
            four ? (Label4.backgroundColor = UIColor.green):(Label4.backgroundColor = UIColor.red)
            six ? (Label6.backgroundColor = UIColor.green):(Label6.backgroundColor = UIColor.red)
        default:
            one = !one
            three = !three
            five = !five
            two = !two
            four = !four
            six = !six
            one ? (Label1.backgroundColor = UIColor.green):(Label1.backgroundColor = UIColor.red)
            three ? (Label3.backgroundColor = UIColor.green):(Label3.backgroundColor = UIColor.red)
            five ? (Label3.backgroundColor = UIColor.green):(Label5.backgroundColor = UIColor.red)
            two ? (Label2.backgroundColor = UIColor.green):(Label2.backgroundColor = UIColor.red)
            four ? (Label4.backgroundColor = UIColor.green):(Label4.backgroundColor = UIColor.red)
            six ? (Label6.backgroundColor = UIColor.green):(Label6.backgroundColor = UIColor.red)
        }
    }
    @IBAction func Switch2(_ sender: Any) {
        isSwitched2 = !isSwitched2
        switch isSwitched2 {
        case true:
            two = !two
            four = !four
            six = !six
            two ? (Label2.backgroundColor = UIColor.green):(Label2.backgroundColor = UIColor.red)
            four ? (Label4.backgroundColor = UIColor.green):(Label4.backgroundColor = UIColor.red)
            six ? (Label6.backgroundColor = UIColor.green):(Label6.backgroundColor = UIColor.red)
        default:
            two = !two
            four = !four
            six = !six
            two ? (Label2.backgroundColor = UIColor.green):(Label2.backgroundColor = UIColor.red)
            four ? (Label4.backgroundColor = UIColor.green):(Label4.backgroundColor = UIColor.red)
            six ? (Label6.backgroundColor = UIColor.green):(Label6.backgroundColor = UIColor.red)
        }
    }
    @IBAction func Switch3(_ sender: Any) {
        isSwitched3 = !isSwitched3
        switch isSwitched3 {
        case true:
            one = !one
            three = !three
            five = !five
            one ? (Label1.backgroundColor = UIColor.green):(Label1.backgroundColor = UIColor.red)
            three ? (Label3.backgroundColor = UIColor.green):(Label3.backgroundColor = UIColor.red)
            five ? (Label5.backgroundColor = UIColor.green):(Label5.backgroundColor = UIColor.red)
        default:
            one = !one
            three = !three
            five = !five
            one ? (Label1.backgroundColor = UIColor.green):(Label1.backgroundColor = UIColor.red)
            three ? (Label3.backgroundColor = UIColor.green):(Label3.backgroundColor = UIColor.red)
            five ? (Label5.backgroundColor = UIColor.green):(Label5.backgroundColor = UIColor.red)
        }
    }
    @IBAction func Switch4(_ sender: Any) {
        isSwitched4 = !isSwitched4
        switch isSwitched4 {
        case true:
            three = !three
            six = !six
            six ? (Label6.backgroundColor = UIColor.green):(Label6.backgroundColor = UIColor.red)
            three ? (Label3.backgroundColor = UIColor.green):(Label3.backgroundColor = UIColor.red)
        default:
            three = !three
            six = !six
            six ? (Label6.backgroundColor = UIColor.green):(Label6.backgroundColor = UIColor.red)
            three ? (Label3.backgroundColor = UIColor.green):(Label3.backgroundColor = UIColor.red)
        }

    }
    @IBAction func Switch5(_ sender: Any) {
        isSwitched5 = !isSwitched5
        switch isSwitched5 {
        case true:
            five = !five
            five ? (Label5.backgroundColor = UIColor.green):(Label5.backgroundColor = UIColor.red)
        default:
            five = !five
            five ? (Label5.backgroundColor = UIColor.green):(Label5.backgroundColor = UIColor.red)
        }
    }
    @IBAction func Switch6(_ sender: Any) {
        isSwitched6 = !isSwitched6
        switch isSwitched5 {
        case true:
            one ? (Label1.backgroundColor = UIColor.red):(Label1.backgroundColor = UIColor.green)
            three ? (Label3.backgroundColor = UIColor.red):(Label3.backgroundColor = UIColor.green)
            five ? (Label5.backgroundColor = UIColor.red):(Label5.backgroundColor = UIColor.green)
            two ? (Label2.backgroundColor = UIColor.red):(Label2.backgroundColor = UIColor.green)
            four ? (Label4.backgroundColor = UIColor.red):(Label4.backgroundColor = UIColor.green)
            six ? (Label6.backgroundColor = UIColor.red):(Label6.backgroundColor = UIColor.green)
        default:
            one ? (Label1.backgroundColor = UIColor.red):(Label1.backgroundColor = UIColor.green)
            three ? (Label3.backgroundColor = UIColor.red):(Label3.backgroundColor = UIColor.green)
            five ? (Label5.backgroundColor = UIColor.red):(Label5.backgroundColor = UIColor.green)
            two ? (Label2.backgroundColor = UIColor.red):(Label2.backgroundColor = UIColor.green)
            four ? (Label4.backgroundColor = UIColor.red):(Label4.backgroundColor = UIColor.green)
            six ? (Label6.backgroundColor = UIColor.red):(Label6.backgroundColor = UIColor.green)
        }
        label1Green = ((Label1.backgroundColor == UIColor.green) ? true:false)
        label2Green = ((Label2.backgroundColor == UIColor.green) ? true:false)
        label3Green = ((Label3.backgroundColor == UIColor.green) ? true:false)
        label4Green = ((Label4.backgroundColor == UIColor.green) ? true:false)
        label5Green = ((Label5.backgroundColor == UIColor.green) ? true:false)
        label6Green = ((Label6.backgroundColor == UIColor.green) ? true:false)
        func whenButtonPressed {
        var allLitUp = false
        if label1Green && label2Green && label3Green && label4Green && label5Green && label6Green {
        performSegue(withIdentifier: "ViewController2", sender: sender)
        }
        }
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
