//
//  ContentView.swift
//  DatePickerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 24/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var selectedDate:Date = Date()
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Selected Date : \(selectedDate.formatDate())")
                    Text("Date Picker")
                    
                    DatePicker("Style 1", selection: $selectedDate)
                        .accentColor(.orange)

                    DatePicker("Style 2", selection: $selectedDate)
                        .accentColor(.orange)
                        .datePickerStyle(.wheel)
                    
                    DatePicker("Style 3", selection: $selectedDate)
                        .accentColor(.orange)
                        .datePickerStyle(.graphical)
                    
                    DatePicker("Style 3", selection: $selectedDate , displayedComponents: [.date])
                        .colorScheme(.light)
                        .datePickerStyle(.graphical)
                        .foregroundColor(Color.white)
                        .colorInvert()
                        .colorMultiply(Color.white)
                        .background(Color.black)
                    
                    
                }.padding()


            }
            .navigationTitle("Date Picker Styles")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
