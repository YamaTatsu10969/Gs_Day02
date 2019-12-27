//
//  CustomPokemonViewController.swift
//  TableViewPractice
//
//  Created by Tatsuya Yamamoto on 2019/12/27.
//  Copyright © 2019 山本竜也. All rights reserved.
//

import UIKit

class CustomPokemonViewController: UIViewController {
    
    let pokemon = ["ピカチュウ", "フシギダネ", "ヒトカゲ", "ゼニガメ"]
    let pokemonImageNames = ["pikachu", "fusigidane", "hitokage", "zenigame"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: PokemonCell.className, bundle: nil), forCellReuseIdentifier: PokemonCell.className)
    }

}

extension CustomPokemonViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PokemonCell.className, for: indexPath) as! PokemonCell
        cell.pokemonImageView.image = UIImage(named: pokemonImageNames[indexPath.row])
        cell.pokemonLabel.text = pokemon[indexPath.row]
        return cell
    }
    
    
}
