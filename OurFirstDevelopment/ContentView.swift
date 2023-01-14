//
//  ContentView.swift
//  OurFirstDevelopment
//
//  Created by Tetsuo Yamaguchi on 2023/01/14.
//

import SwiftUI

struct ContentView: View {
    //アラートどこかのタイミングで出そうかな
    @State var showAlert = false
    
    var body: some View {
        VStack {
            //画像
            Image("gu")
                .resizable()
                .scaledToFit()
            //.padding()
            
            //テキスト
            Text("Rock")
                .padding()
            
            //button
            
            Button{
                print("ボタンが押された")
            } label:{
                Text("Let's play")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
