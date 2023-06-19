//
//  ContentView.swift
//  Percentage Calculator
//
//  Created by Pichai Panklom on 6/19/23.
//

import SwiftUI

struct ContentView: View {
    @State var x1:String = ""
    @State var y1:String = ""
    @State var resultText1:String = "??"
    @State var x2:String = ""
    @State var y2:String = ""
    @State var resultText2:String = "?? %"
    
    
    var body: some View {
        VStack {
            Text("คำนวนเปอร์เซนต์")
                .font(.largeTitle)
                .padding(.vertical,50)
                .foregroundColor(Color.cyan)
            VStack{
                Text("คำนวณหาค่าจากเปอร์เซ็นต์ที่ทราบ")
                Text(resultText1)
                    .foregroundColor(Color.red)
                    .font(.title2)
                HStack(spacing: 50) {
                    TextField("X%", text: $x1)
                        .background(Color.white)
                    Text("% ของ")
                    TextField("Y", text: $y1)
                        .background(Color.white)
                }.padding(5)
                HStack(spacing: 50) {
                    Button("รีเซต") {
                        self.resultText1 = "??"
                        self.x1 = ""
                        self.y1 = ""
                    }
                    Button("คำนวณ") {
                        if x1 !=  "" && y1 != ""{
                            let result1 = (Double(x1)!/100.0) * Double(y1)!
                            self.resultText1 = x1+" %" + " ของ "+y1+" = "+String(result1)
                        }
                    }
                }
            }
            .padding(20)
            .background(Color.blue.opacity(0.3))
            .cornerRadius(10)
            .shadow(color: Color.gray, radius: 4, x: 0, y: 2)
            VStack{
                Text("คำนวณหาเปอร์เซ็นต์จากค่าที่ทราบ")
                Text(resultText2)
                    .foregroundColor(Color.red)
                    .font(.title2)
                HStack(spacing: 50) {
                    TextField("X", text: $x2)
                        .background(Color.white)
                    Text("ของ")
                    TextField("Y", text: $y2)
                        .background(Color.white)
                }.padding(5)
                HStack(spacing: 50) {
                    Button("รีเซต") {
                        self.resultText2 = "?? %"
                        self.x2 = ""
                        self.y2 = ""
                    }
                    Button("คำนวณ") {
                        if x2 != "" && y2 != ""{
                            let result2 = (Double(x2)!/Double(y2)!) * 100.0
                            self.resultText2 = x2 + " ของ "+y2+" = "+String(result2)+" %"
                        }
                    }
                }
            }
            .padding(20)
            .background(Color.blue.opacity(0.3))
            .cornerRadius(10)
            .shadow(color: Color.gray, radius: 4, x: 0, y: 2)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
