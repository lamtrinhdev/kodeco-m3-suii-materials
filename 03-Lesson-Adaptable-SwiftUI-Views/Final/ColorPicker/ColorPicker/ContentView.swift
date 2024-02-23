/// Copyright (c) 2024 Kodeco Inc.
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import SwiftUI

struct ContentView: View {
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    @State private var activeColor = Color.gray
    
    var body: some View {
        VStack {
            Text("Color Picker")
                .font(.title)
                .fontWeight(.semibold)
            
            RoundedRectangle(cornerRadius: 24.0)
                .frame(width: 300, height: 250)
                .foregroundStyle(activeColor)
                .padding(.bottom, 24)
            
            Text("Red")
            
            HStack {
                Slider(value: $redValue, in: 0...255)
                    .tint(.red)
                Text("\(Int(redValue.rounded()))")
            }
            
            Text("Green")
            
            HStack {
                Slider(value: $greenValue, in: 0...255)
                    .tint(.green)
                Text("\(Int(greenValue.rounded()))")
            }
            
            Text("Blue")
            
            HStack {
                Slider(value: $blueValue, in: 0...255)
                    .tint(.blue)
                Text("\(Int(blueValue.rounded()))")
            }
            
            Button("Set color") {
                activeColor = Color(red: redValue / 255.0, green: greenValue / 255.0, blue: blueValue / 255.0)
            }
            .buttonStyle(.borderedProminent)
            .padding(16.0)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
