//
//  ViewController.swift
//  Basic UI
//
//  Created by Craig Booker on 1/22/19.
//  Copyright © 2019 Arcadia Softworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var dayLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    dayLabel.text = "Choose a date."
  }
  @IBAction func didChangeDate(_ sender: UIDatePicker) {
    let date:Date = sender.date
    let formatter:DateFormatter = DateFormatter()
    formatter.dateFormat = "EEEE"
    let dayOfWeek:String  = formatter.string(from: date)
    dayLabel.text = "The day is a \(dayOfWeek)"
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}

