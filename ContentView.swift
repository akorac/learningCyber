//
//  ContentView.swift
//  CyberStudyApp
//
//  Created by Amar Korac on 2/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
     
        ScrollView {
            
            LazyVStack {
                
                // Confirm that current module is set
                if model.currentModule != nil {
                    let range = Array(0..<model.currentModule!.content.lessons.count)
                    ForEach(range, id: \.self) { index in
                        //ForEach(0..<model.currentModule!.content.lessons.count) { index in
                        NavigationLink(
                            destination:
                                ContentDetailView()
                                    .onAppear(perform: {
                                        model.beginLesson(index)
                                    }),
                            label: {
                                ContentViewRow(index: index)
                            
                        })
                        
                    }
                }
            }
            .accentColor(.black)
            .padding()
            .navigationBarTitle("Learn \(model.currentModule?.category ?? "")")
            
        }
        
        
    }
}

