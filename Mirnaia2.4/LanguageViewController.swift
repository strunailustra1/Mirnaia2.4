//
//  LanguageViewController.swift
//  Mirnaia2.4
//
//  Created by Наталья Мирная on 24/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import UIKit

class LanguageViewController: UIViewController {

    @IBOutlet var englishLevel: UISegmentedControl!
    @IBOutlet var frenchLevel: UISegmentedControl!
    @IBOutlet var germanLevel: UISegmentedControl!
    
    var englishLevelIndex: Int!
    var frenchLevelIndex: Int!
    var germanLevelIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        englishLevel.selectedSegmentIndex = englishLevelIndex
        frenchLevel.selectedSegmentIndex = frenchLevelIndex
        germanLevel.selectedSegmentIndex = germanLevelIndex
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
