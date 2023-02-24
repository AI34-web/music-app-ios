//
//  Model.swift
//  musicApp
//
//  Created by Artyom Ivanov on 24.02.2023.
//


import Foundation

// фрэеймворк для того что бы находить музыку в прложении.
import MediaPlayer


/// класс содержащий свойства для хранения данных музыкальных коллекций
// TODO: - ObservableObject - что то, что имеет отношение к RXSwift... РАЗОБРАТЬ
class Model: ObservableObject {
    
    // примерненение паттерна singleTone - shared
    // @Published обозначает, что если свойство измениться, то и все представления использующие этот объект будут перезагружены, что бы отразить данные изменения.
    // MPMediaItem - коллекция свойств, представляющая один элемент (песня из альбома)
    static let shared = Model()
    @Published var currentSong: MPMediaItem?
    
    // MPMediaItemCollection - отсортированный набор мультимедийных элементов
    @Published var playList = [MPMediaItemCollection]() // массив альбомов вероятно
    @Published var librarySong = [MPMediaItem]() // библиотека песен
    
}
