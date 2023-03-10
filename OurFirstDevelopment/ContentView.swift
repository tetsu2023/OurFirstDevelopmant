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
    
    @State var answerNumber = 0
    
    var body: some View {
        VStack {
            
            Spacer()
            //じゃんけんの数字が0の場合
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                //じゃんけんの数字が1の場合、グーの画像を指定
                
                //画像
                Image("gu")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                
                //テキスト
                Text("Rock")
                    .padding(.bottom)
                
            } else if answerNumber == 2 {
                //じゃんけんの数字が2の場合、チョキの画像を指定
                
                //画像
                Image("choki")
                    .resizable()
                    .scaledToFit()
                //.padding()
                
                Spacer()
                
                //テキスト
                Text("scissors")
                    .padding(.bottom)
                
            } else if answerNumber == 3 {
                //じゃんけんの数字が1,2以外の場合、パーの画像を指定
                
                //画像
                Image("pa")
                    .resizable()
                    .scaledToFit()
                //.padding()
                
                Spacer()
                
                //テキスト
                Text("paper")
                    .padding(.bottom)
                
            }
            
            
            //button
            Button{
                //ランダムに数字の算出
                answerNumber = Int.random(in: 1...3)
                
                var newAnswerNumber = 0
                
                //repeatで繰り返す
                repeat {
                    //ランダムに数字の算出
                    newAnswerNumber = Int.random(in: 1...3)
                    
                }
                //結果が異なる場合、repeatを抜ける
                while answerNumber == newAnswerNumber
                
                //じゃんけんの結果を格納
                answerNumber = newAnswerNumber
                
            } label:{
                Text("Let's play")
                    .frame(maxWidth: .infinity)
                    .frame(minHeight: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundColor(.white)
                    .padding(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
