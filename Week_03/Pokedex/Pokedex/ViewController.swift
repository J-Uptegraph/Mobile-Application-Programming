//  ViewController.swift
//  Pokedex
//  Created by Johnathan Uptegraph on 9/14/22.

import UIKit
import SwiftUI

struct Pokemon {
    var pokemonName: String
    var pokemonType: String
    var pokemonTypeImage: UIImage
    var pokemonImage: UIImage
    var pokemonSpecies: String
    var pokemonHeight: Double
    var pokemonWeight: Double
    var pokemonBackgroundColor: UIColor
    var pokemonDescription: String
    var pokemonIsStarred: Bool
    // Add an array of moves with damage and type
    // pokemonHeight in meters and feet add "m" for meters
    // pokemonWeight in kg and lbs
    // Evolutions?
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableImage: UIImageView!
    @IBOutlet weak var tableImagePokemonType: UIImageView!
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

//Pokedex Pokemon Data


var pikachu = Pokemon(pokemonName: "Pikachu", pokemonType: "Electric", pokemonTypeImage: UIImage(imageLiteralResourceName: "electric"), pokemonImage: UIImage(imageLiteralResourceName: "pikachu"), pokemonSpecies: "Mouse Pokémon", pokemonHeight: 0.4, pokemonWeight: 6.0, pokemonBackgroundColor: .yellow, pokemonDescription: "Pikachu is a short, chubby rodent Pokémon. It is covered in yellow fur with two horizontal brown stripes on its back. It has a small mouth, long, pointed ears with black tips, and brown eyes. Each cheek is a red circle that contains a pouch for electricity storage. It has short forearms with five fingers on each paw, and its feet each have three toes. At the base of its lightning bolt-shaped tail is a patch of brown fur. A female will have a V-shaped notch at the end of its tail, which looks like the top of a heart. It is classified as a quadruped, but it has been known to stand and walk on its hind legs.", pokemonIsStarred: false);

var charmander = Pokemon(pokemonName: "Charmander", pokemonType: "Fire", pokemonTypeImage: UIImage(imageLiteralResourceName: "fire"), pokemonImage: UIImage(imageLiteralResourceName: "charmander"), pokemonSpecies: "Lizard Pokémon", pokemonHeight: 0.6, pokemonWeight: 8.5, pokemonBackgroundColor: .orange, pokemonDescription: "Charmander is a small, bipedal, dinosaur like Pokémon. Most of its body is colored orange, while its underbelly is a light yellow color. Charmander, along with all of its evolved forms, has a flame that is constantly burning on the end of its tail.", pokemonIsStarred: false);

var bulbasaur = Pokemon(pokemonName: "Bulbasaur", pokemonType: "Grass", pokemonTypeImage: UIImage(imageLiteralResourceName: "grass"), pokemonImage: UIImage(imageLiteralResourceName: "bulbasaur"), pokemonSpecies: "Seed Pokémon", pokemonHeight: 0.7, pokemonWeight: 6.9, pokemonBackgroundColor: .green, pokemonDescription: "Bulbasaur is a small, quadrupedal amphibian Pokémon that has blue-green skin with darker patches. It has red eyes with white pupils, pointed, ear-like structures on top of its head, and a short, blunt snout with a wide mouth. A pair of small, pointed teeth are visible in the upper jaw when its mouth is open.", pokemonIsStarred: false);

var squirtle = Pokemon(pokemonName: "Squirtle", pokemonType: "Water", pokemonTypeImage: UIImage(imageLiteralResourceName: "water"), pokemonImage: UIImage(imageLiteralResourceName: "squirtle"), pokemonSpecies: "Turtle Pokémon", pokemonHeight: 0.5, pokemonWeight: 9.0, pokemonBackgroundColor: .blue, pokemonDescription: "Squirtle is a Water-type Pokémon. The blue color that it acquires is given to Squirtle because of how the ocean reflects blue light on a Sea turtle. Squirtle's shell is brown with a yellow underbelly; Squirtle is known to withdraw into its shell, both in and outside of battle.", pokemonIsStarred: false);

var jigglypuff = Pokemon(pokemonName: "Jigglypuff", pokemonType: "Fairy", pokemonTypeImage: UIImage(imageLiteralResourceName: "fairy"), pokemonImage: UIImage(imageLiteralResourceName: "jigglypuff"), pokemonSpecies: "Normal Pokémon", pokemonHeight: 0.5, pokemonWeight: 5.5, pokemonBackgroundColor: .magenta, pokemonDescription: "Jigglypuff is a small pink Pokémon. It has a pink round body. It has stubby arms and feet. Jigglypuff has large eyes which are blue or teal and it has large pointy ears with the inner coloration black. It has a large curl-like tuft in between its ears. Jigglypuff's skin is stretchy and it usually puffs up when irritated.", pokemonIsStarred: false)


//... so on

var pokemonNames = [pikachu,charmander,bulbasaur,squirtle,jigglypuff];
//var currentCell = 0

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//       currentCell = indexPath.row
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonNames.count

        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = pokemonNames[indexPath.row].pokemonName
        cell.imageView?.image = pokemonNames[indexPath.row].pokemonImage
        cell.imageView?.image = pokemonNames[indexPath.row].pokemonTypeImage
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "pokedexSegue") {
            let destination = segue.destination as? SecondViewController
            destination?.myIndex = tableView.indexPathForSelectedRow!.row
        }
    }
}
