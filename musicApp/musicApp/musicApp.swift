//
//  musicApp.swift
//  musicApp
//
//  Created by Artyom Ivanov on 23.02.2023.
//

import SwiftUI

// StoreKit - фреймворк, добовляющий свойства взаимодействия с appStore. Вероятно
import StoreKit
import MediaPlayer


@main
struct musicAppApp: App {
    
    // обертка свойств, говорящее о том что если наблюдаемое свойство изменяется то и окружающая среда изменяется 
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            // свойство выполняет действия при изменении указанного значения
                .onChange(of: scenePhase, perform: { value in
                    if value == .active {
                        SKCloudServiceController.requestAuthorization { status in
                            if status == .authorized {
                                let songsQuery = MPMediaQuery.songs()
                                if let songs = songsQuery.items {
                                    let desc = NSSortDescriptor(key: MPMediaItemPropertyLastPlayedDate, ascending: false)
                                    let sortedSongs = NSArray(array: songs).sortedArray(using: [desc])
                                    Model.shared.librarySong = sortedSongs as! [MPMediaItem]
                                    
                                    let playListQuery = MPMediaQuery.playlists()
                                    if let playLists = playListQuery.collections {
                                        Model.shared.playList = playLists
                                    }
                                }
                            }
                        }
                    }
                })
        }
    }
}
