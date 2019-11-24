//
//  ViewController.swift
//  Mirnaia2.4
//
//  Created by Наталья Мирная on 24/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var englishLabel: UILabel!
    @IBOutlet var frenchLabel: UILabel!
    @IBOutlet var germanLabel: UILabel!
    
    var languageLevel = [0: "Разговорный", 1: "Базовый", 2: "Нулевой"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        let langEditVC = segue.source as! LanguageViewController
        englishLabel.text = languageLevel[langEditVC.englishLevel.selectedSegmentIndex]
        frenchLabel.text = languageLevel[langEditVC.frenchLevel.selectedSegmentIndex]
        germanLabel.text = languageLevel[langEditVC.germanLevel.selectedSegmentIndex]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let langEditVC = segue.destination as! LanguageViewController
        
        langEditVC.englishLevelIndex = getLanguageLevelIndex(searchName: englishLabel.text!)
        langEditVC.frenchLevelIndex = getLanguageLevelIndex(searchName: frenchLabel.text!)
        langEditVC.germanLevelIndex = getLanguageLevelIndex(searchName: germanLabel.text!)
    }
     
    private func getLanguageLevelIndex(searchName: String) -> Int {
        
        for (index, name) in languageLevel {
            if searchName == name {
                return index
            }
        }
        return 2
    }
}

