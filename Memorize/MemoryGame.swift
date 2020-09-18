//
//  MemoryGame.swift
//  Memorize
//
//  Created by Лера Тарасенко on 30.08.2020.
//  Copyright © 2020 Лера Тарасенко. All rights reserved.
//

import Foundation

struct MemoryGame <CardContent>{
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosen:  \(card)")
    }
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>() //создание пустого массива карт
        
        for pairIndex in 0..<numberOfPairsOfCards{
            let content = cardContentFactory(pairIndex)
            
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
        cards.shuffle()
    }
    struct Card: Identifiable { //чтобы перебрать все карты на экране
        var id: Int
        var isFaceUp: Bool = true //лицевая ли сторона карты
        var isMatched: Bool = false //совпали ли карты
        var content: CardContent
    }
}
