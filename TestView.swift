//
//  TestView.swift
//  CyberStudyApp
//
//  Created by Amar Korac on 3/27/23.
//

import SwiftUI

struct TestView: View {
    // How do I know what quiz is selected, what quiz to display? - the EnvironmentObject dictates these things
    @EnvironmentObject var model:ContentModel
    @State var selectedAnswerIndex = -1
    
    var body: some View {
        
        if model.currentQuestion != nil {
            
            VStack (alignment: .leading) {
                // Question number
                Text("Question \(model.currentQuestionIndex + 1) of \(model.currentModule?.test.questions.count ?? 0)")
                    .padding(.leading, 20)
                
                // Question
                CodeTextView()
                    .padding(.horizontal, 20)
                
                // Answers
                ScrollView {
                    VStack {
                        ForEach (0..<model.currentQuestion!.answers.count, id: \.self) { index in
                           
                            Button {
                                // Track the selected index
                                selectedAnswerIndex = index
                                
                            } label: {
                                
                                ZStack {
                                    
                                    RectangleCard(color: index == selectedAnswerIndex ? .gray : .white) // does the index of this button equal to the selected answer index ? if yes then use gray otherwise use white
                                        .frame(height: 48)
                                    
                                    Text(model.currentQuestion!.answers[index])
                                }
                                
                                
                            }
                            
                         
                        }
                    }
                    .accentColor(.black)
                    .padding()
                }
                // Button
            }
            .navigationBarTitle("\(model.currentModule?.category ?? "") Test")      // otherwise it will be empty string, subs variable in + test.
                                                                                    //If currentModule is nil it does not find category so we use nil operator if its not set yet - use empty string
        }
        else {
            // Test has not loaded yet
            ProgressView()
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
