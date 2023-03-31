//
//  ContentViewTrial.swift
//  CyberStudyApp
//
//  Created by Amar Korac on 3/26/23.
//

import SwiftUI
import AVKit

struct ContentViewTrial: View {

    var body: some View {
            WebView(url: URL(string: "https://codewithchris.com")!)
                .edgesIgnoringSafeArea(.bottom)
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


