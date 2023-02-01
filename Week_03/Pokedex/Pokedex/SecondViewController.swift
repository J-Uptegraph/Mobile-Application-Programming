
//  SecondViewController.swift
//  Pokedex
//  Created by Johnathan Uptegraph on 9/15/22.
//

import UIKit
import SwiftUI

class SecondViewController: UIViewController {
    var myIndex = 0;
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    // This must be skipped once. This is the problem with the code, I just cannot figure out how to pass the current cell
    // Because currentCell must be given a value within the index of pokemonNames, it always starts as Pikachu... the pokemon being
    // are always beeing displayed after the next pokemon has been selected
        override func viewDidLoad() {
            super.viewDidLoad()
            let tempPokemon = pokemonNames[myIndex]
            view.backgroundColor = tempPokemon.pokemonBackgroundColor;

             //  Image view
            imageView.image = tempPokemon.pokemonImage
            nameLabel.text = tempPokemon.pokemonName
            typeLabel.text = (tempPokemon.pokemonType + " Type")
            speciesLabel.text = tempPokemon.pokemonSpecies
            heightLabel.text = ("Height: "  + String(tempPokemon.pokemonHeight) + "m")
            weightLabel.text = ("Weight: " + String(tempPokemon.pokemonWeight) + "kg")
            descriptionLabel.text = (tempPokemon.pokemonDescription)
    }
}
