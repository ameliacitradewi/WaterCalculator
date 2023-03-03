//
//  ViewController.swift
//  WaterReminder
//
//  Created by Amelia Citra on 28/02/23.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var workoutWaterIntakeValue = "0.0"
    
    @IBOutlet weak var weightLabelChange: UILabel!
    @IBOutlet weak var workoutLabelChange: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var workoutSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabelChange.text = "\(weight) kg"
    }
   
    
    @IBAction func workoutSliderChange(_ sender: UISlider) {
        let workout = String(format: "%.0f", sender.value)
        workoutLabelChange.text = "\(workout) minutes"
    }

    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value * 2.2 //convert to lbs
        let workout = ((workoutSlider.value / 30) * 12) * 0.03 //extra water in litre
        
        let normalWaterIntake = (weight * 0.5) * 0.03 //convert to litre
        let workoutWaterIntake = (normalWaterIntake + workout)
        workoutWaterIntakeValue = String(format: "%.1f", workoutWaterIntake)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.workoutWaterIntakeValue = workoutWaterIntakeValue
        }
    }
   
}

