//
//  ContentView.swift
//  Memorize
//
//  Created by apple on 2/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView()
            }
        }
        
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct  CardView: View {
    var isFaceUp: Bool = true
    // If there is no defult value, there will be an error message:
    // "Missing argument for parameter 'isFaceUp' in call"
    
    var body: some View{
        return ZStack() {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
            // RoundedRectangle & Text are both Views.
        }
    }
}

/*  NOTES
 
 struct ContentView: View {
     var body: some View
    - vars = variable && properties && a var inside a struct or a class
    - boay = name of the property
    - : some View = type of this variable / property
         - 'View' (type) also can be an Int, String, Bool, etc.
 
                            {
        Text("Hello, world!")
    }
 From the curly brace '{' to another '}', this var, its value is not
 stored in memory. Instead, this var is computed. Every time the system
 asks for the value of var, it calls this thing again.
 
        Return Text("Hello, world!")  // originally should look like
So, if it's one line & return the value. "Return" can be left out.
}


 return ZStack(content: {
 So there's only one return in the "View", the word "Return" can be left out.
 
 ForEach(0..<4, content: { index in
     return ZStack(content: {
         RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
         RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
         Text("👻")
         // RoundedRectangle & Text are both Views.
     })
 })
 If there's only one argument, it can be reduced like this:
 > ForEach(0..<4, content: { index in
 > // So there's only one argument, which is "content".
 > ForEach((0..<4)
 and so on.

*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
