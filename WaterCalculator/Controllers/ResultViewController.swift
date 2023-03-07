//
//  ResultViewController.swift
//  WaterReminder
//
//  Created by Amelia Citra on 28/02/23.
//

import UIKit

class ResultViewController: UIViewController {

    var workoutWaterIntakeValue: String?
    
    @IBOutlet weak var waterIntakeLabel: UILabel!
   
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
        
     override func viewDidLoad() {
         super.viewDidLoad()
         waterIntakeLabel.text = workoutWaterIntakeValue
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
