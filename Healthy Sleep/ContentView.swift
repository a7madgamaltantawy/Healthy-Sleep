//
//  ContentView.swift
//  Healthy Sleep
//
//  Created by Ahmed Tantawy on 09/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    
    @State private var wakeUp = Date()
    
    
    
    
    
    
    
    
    
    
    
    var body: some View {
        Stepper(value: $sleepAmount  , in : 4...12 , step : 0.25) {
            
            Text("\(sleepAmount , specifier:"%.2f") hours")
        }
        Form{
        
            DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute )
        }
    }
   
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
