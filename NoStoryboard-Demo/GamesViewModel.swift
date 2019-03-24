//
//  GamesViewModel.swift
//  NoStoryboard-Demo
//
//  Created by Kent Winder on 03/24/2019.
//  Copyright © 2019 Kent Winder. All rights reserved.
//

import UIKit

class GamesViewModel: NSObject {
    private var games: [Game] = []
    
    func numberOfRows(inSection section: Int) -> Int {
        return games.count
    }
    
    func data(forRowAt indexPath: IndexPath) -> Game {
        return games[indexPath.row]
    }
    
    func getGames() {
        let game1 = Game()
        game1.name = "Sekiro Shadows Die Twice"
        game1.desc = "CARVE your own clever path to vengeance in an all-new adventure from developer fromsoftware\nExplore late 1500S sengoku Japan, a brutal period of constant life and Death conflict, as you come face to face with larger than life foes in a dark and twisted world\nTake revenge. Restore your honor. Kill ingeniously"
        game1.price = 59.99
        game1.image = "Sekiro_Shadows_Die_Twice"
        game1.developer = "Activision"
        games.append(game1)
        
        let game2 = Game()
        game2.name = "Red Dead Redemption 2"
        game2.desc = "Developed by the creators of Grand Theft Auto V and Red Dead Redemption, Red Dead Redemption 2 is an epic tale of life in America’s unforgiving heartland. The game's vast and atmospheric world will also provide the foundation for a brand new online multiplayer experience.\nESRB Content Description: Blood, intense violence, nudity, strong language, strong sexual content, use of drugs"
        game2.price = 39.88
        game2.image = "Red_Dead_Redemption_2"
        game2.developer = "Rockstar Games"
        games.append(game2)
        
        let game3 = Game()
        game3.name = "Super Smash Bros. Ultimate"
        game3.desc = "New fighters, like Inkling from the Splatoon series and Ridley from the Metroid series, make their Super Smash Bros. series debut alongside every Super Smash Bros. fighter in the series…EVER!\nFast combat , new items, new attacks, new defensive options, and more will keep the battle raging whether you’re at home or on the go.\nEntertainment Software Rating Board (ESRB) Content Description: Cartoon Violence, Comic Mischief, Suggestive Themes"
        game3.price = 56.99
        game3.image = "Super_Smash_Bros_Ultimate"
        game3.developer = "Nintendo"
        games.append(game3)
        
        let game4 = Game()
        game4.name = "Devil May Cry 5"
        game4.desc = "High octane stylized action – Featuring three playable characters each with a radically different stylish combat play style as they take on the city overrun with demons\nGroundbreaking graphics – Developed with Capcom’s in-house proprietary RE engine, the series continues to achieve new heights in fidelity with graphics that utilize photorealistic character designs and stunning lighting and environmental effects\nTake down the demonic invasion – Battle against epic bosses in adrenaline fueled fights across the over-run Red Grave City all to the beat of a truly killer soundtrack\nDemon hunter - Nero, one of the series main protagonists and a young demon hunter who has the blood of Sparda, heads to Red Grave City to face the hellish onslaught of demons, with weapons craftswoman and new partner-in-crime, Nico"
        game4.price = 59.97
        game4.image = "Devil_May_Cry_5"
        game4.developer = "Capcom"
        games.append(game4)
        
        let game5 = Game()
        game5.name = "Kingdom Hearts III"
        game5.desc = "Combines worlds of Disney and Final Fantasy\nSora returns with Donald Duck, Goofy, King Mickey and Riku to stop Master Xehanort's plan\nNew 'Attraction Flow' attacks incorporate Disney Parks attractions\nFeatures worlds based on new Disney properties including Tangled and Big Hero 6"
        game5.price = 47.99
        game5.image = "Kingdom_Hearts_III"
        game5.developer = "Square Enix"
        games.append(game5)
    }
}
