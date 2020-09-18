//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Лера Тарасенко on 31.08.2020.
//  Copyright © 2020 Лера Тарасенко. All rights reserved.
//

import Foundation


class EmojiMemoryGame{
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame() //static функция
    
    static func createMemoryGame() -> MemoryGame<String>{ //функция типа, а не экземпляр класса
        let emojis : Array<String> = ["👻","🎃", "🕷", "🕸", "🦇"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5)) {pairIndex in emojis[pairIndex]} //для связи с model. (set) Стеклянная дверь, смотреть можно, изменять - нет. Встроенная функция (замыкание)
    }
    
    // MARK: — Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: Intent(s). намерения изменить карту
    
    func choose (card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
    
}
