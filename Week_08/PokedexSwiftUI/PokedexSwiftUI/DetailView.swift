//
//  DetailView.swift
//  PokedexSwiftUI
//
//  Created by Johnathan Uptegraph on 10/25/22.
//

import SwiftUI

struct DetailView: View {
    var pokemonIndex: Int
    
    
    var pokemonNames = ["Pikachu", "Charmander", "Bulbasaur", "Squirtle", "Jigglypuff"]
    var pokemonImages = ["pikachu", "charmander", "bulbasaur", "squirtle", "jigglypuff"]
    var pokemonDescriptions = ["Pikachu is a short, chubby rodent Pokémon. It is covered in yellow fur with two horizontal brown stripes on its back. It has a small mouth, long, pointed ears with black tips, and brown eyes. Each cheek is a red circle that contains a pouch for electricity storage. It has short forearms with five fingers on each paw, and its feet each have three toes. At the base of its lightning bolt-shaped tail is a patch of brown fur. A female will have a V-shaped notch at the end of its tail, which looks like the top of a heart. It is classified as a quadruped, but it has been known to stand and walk on its hind legs.", "Charmander is a small, bipedal, dinosaur like Pokémon. Most of its body is colored orange, while its underbelly is a light yellow color. Charmander, along with all of its evolved forms, has a flame that is constantly burning on the end of its tail.", "Bulbasaur is a small, quadrupedal amphibian Pokémon that has blue-green skin with darker patches. It has red eyes with white pupils, pointed, ear-like structures on top of its head, and a short, blunt snout with a wide mouth. A pair of small, pointed teeth are visible in the upper jaw when its mouth is open.", "Squirtle is a Water-type Pokémon. The blue color that it acquires is given to Squirtle because of how the ocean reflects blue light on a Sea turtle. Squirtle's shell is brown with a yellow underbelly; Squirtle is known to withdraw into its shell, both in and outside of battle.", "Jigglypuff is a small pink Pokémon. It has a pink round body. It has stubby arms and feet. Jigglypuff has large eyes which are blue or teal and it has large pointy ears with the inner coloration black. It has a large curl-like tuft in between its ears. Jigglypuff's skin is stretchy and it usually puffs up when irritated."]
    // var pokemonDescription = [
    var body: some View {
        NavigationView {
            VStack {
                Text(pokemonNames[pokemonIndex])
                Image(pokemonImages[pokemonIndex])
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 200, height: 200)
                Text(pokemonDescriptions[pokemonIndex])
            }
        }
        Text(pokemonNames[pokemonIndex])
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(pokemonIndex: 0)
    }
}
