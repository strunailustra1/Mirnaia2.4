//
//  EducationListViewController.swift
//  Mirnaia2.4
//
//  Created by Наталья Мирная on 24/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import UIKit

struct EducationItem {
    
    let type: String
    let startYear: String
    let endYear: String
    let nameCity: String
    let faculty: String?
    let specialty: String?
    
  }

class EducationListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let itemVC = segue.destination as! EducationItemViewController
        
        switch segue.identifier {
        case "schoolId":
            itemVC.educationItem = EducationItem(type: "Ремонтенская гимназия №1", startYear: "1999", endYear: "2010", nameCity: "с. Ремонтное", faculty: nil, specialty: nil)
        case "highEducationFirst":
            itemVC.educationItem = EducationItem(type: "Таганрогский технологический институт Южного федерального университета", startYear: "2010", endYear: "2015", nameCity: "Таганрог", faculty: "Институт нанотехнологий, электроники и прибостроения", specialty: "Проектирование и технология электронно-вычислительных средств (инженер)")
        case "highEducationSecond":
            itemVC.educationItem = EducationItem(type: "Таганрогский технологический институт Южного федерального университета", startYear: "2015", endYear: "2017", nameCity: "Таганрог", faculty: "Институт нанотехнологий, электроники и прибостроения", specialty: "Проектирование и технология электронно-вычислительных средств (магистр)")
        default:
            break
        }
        
    }
 

}
