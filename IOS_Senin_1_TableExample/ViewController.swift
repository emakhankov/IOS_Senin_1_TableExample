//
//  ViewController.swift
//  IOS_Senin_1_TableExample
//
//  Created by Jenya on 05.01.2021.
//

import UIKit

class ViewController: UIViewController {

    var dataArray: [String] = ["Stas", "Vlad", "Sergey"];
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.dataSource = self;
        tableView.delegate = self;
        
    }
    
    @IBAction func pushAddAction(_ sender: Any) {
        dataArray.append("NewElemennt");
        tableView.reloadData();
    }
    
}

 extension ViewController: UITableViewDelegate
 {
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete;
    }

 
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Удалить";
    }
    

 }


 extension ViewController: UITableViewDataSource
 {
    //кол-во строк в таблице
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    //правило для заполнения текущего элемента
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath);
        cell.textLabel?.text = dataArray[indexPath.row];
            
        return cell;
    }
    
    //Эта хрень нужна как обработчик действия удаления
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        dataArray.remove(at: indexPath.row);
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}

