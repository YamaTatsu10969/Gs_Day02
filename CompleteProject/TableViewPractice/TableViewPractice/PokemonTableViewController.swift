//
//  PokemonTableViewController.swift
//  TableViewPractice
//
//  Created by Tatsuya Yamamoto on 2019/12/27.
//  Copyright © 2019 山本竜也. All rights reserved.
//

import UIKit

class PokemonTableViewController: UITableViewController {
    
    let pokemon = ["ピカチュウ", "フシギダネ", "ヒトカゲ", "ゼニガメ"]
    let pokemonImageNames = ["pikachu", "fusigidane", "hitokage", "zenigame"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad() が呼ばれました")
    }

    // MARK: - Table view data source
    // セクションの数を何個作るかを定義するところ
    override func numberOfSections(in tableView: UITableView) -> Int {
        print("numberOfSections が呼ばれました")
        #warning("1にしないと出てこないよ！")
        return 1
    }

    // セクションの中に、何個のセルを表示するかを定義するところ
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection が呼ばれました")
        print("pokemon.count: \(pokemon.count)")
        // 一つのセクションの中に表示するセルの数
        return pokemon.count
    }

    
    // ここはどんなセルを表示するかを定義するところ。
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cellForRowAt が呼ばれました")
        print("section: \(indexPath.section) row: \(indexPath.row)")
        // cell を作成！！！
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        // 何番目かっていう情報が indexPath に入っているので、それをみる。
        cell.textLabel?.text = pokemon[indexPath.row]
        cell.accessoryType = .checkmark
        cell.imageView?.image = UIImage(named: pokemonImageNames[indexPath.row])
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
