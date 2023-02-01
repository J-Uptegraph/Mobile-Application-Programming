//
//  ContentView.swift
//  PokedexSwiftUI
//
//  Created by Johnathan Uptegraph on 10/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                
                NavigationLink(destination: DetailView(pokemonIndex: 0)){
                    HStack {
                        Image("pikachu")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 75, height: 75)
                        VStack{
                        Text("Pikachu")
                        Text("Electric")
                        }
                    }
                }
                NavigationLink(destination: DetailView(pokemonIndex: 1)){
                    HStack {
                        Image("charmander")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 75, height: 75)
                        VStack{
                        Text("Charmander")
                        Text("Fire")
                        }
                    }
                }
                NavigationLink(destination: DetailView(pokemonIndex: 2)){
                    HStack {
                        Image("bulbasaur") .renderingMode(.original)
                            .resizable()
                            .frame(width: 75, height: 75)
                        VStack{
                        Text("Bulbasaur")
                        Text("Grass")
                        }
                    }
                }
                NavigationLink(destination: DetailView(pokemonIndex: 3)){
                    HStack {
                        Image("squirtle") .renderingMode(.original)
                            .resizable()
                            .frame(width: 75, height: 75)
                        VStack{
                        Text("Squirtle")
                        Text("Water")
                        }
                    }
                }
                NavigationLink(destination: DetailView(pokemonIndex: 4)){
                    HStack {
                        Image("jigglypuff") .renderingMode(.original)
                            .resizable()
                            .frame(width: 75, height: 75)
                        VStack{
                        Text("Jigglypuff")
                        Text("Fairy")
                        }
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
