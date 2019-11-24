//
//  EducationItemViewController.swift
//  Mirnaia2.4
//
//  Created by Наталья Мирная on 24/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import UIKit

class EducationItemViewController: UIViewController {
 
    var educationItem: EducationItem!
    
    @IBOutlet var type: UILabel!
    @IBOutlet var startYear: UILabel!
    @IBOutlet var endYear: UILabel!
    @IBOutlet var name: UILabel!
    @IBOutlet var city: UILabel!
    @IBOutlet var faculty: UILabel!
    @IBOutlet var speciality: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        type.text = educationItem.type
        startYear.text = educationItem.startYear
        endYear.text = educationItem.endYear
        name.text = educationItem.name
        city.text = educationItem.city
        faculty.text = educationItem.faculty
        speciality.text = educationItem.specialty
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
