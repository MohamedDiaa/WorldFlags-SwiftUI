//
//  ContentView.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-09.
//

import SwiftUI


struct ContentView: View {

    var list = countries.sorted()

    var body: some View {

        NavigationStack {

            ScrollView(.vertical) {

                VStack(alignment: .leading,spacing: 10){

                    ForEach(list, id: \.self) { name in

                        VStack {

                            NavigationLink(destination: DestinationCountry(name: name)) {
                                HStack {

                                    Text(name)
                                        .fontWeight(.medium)
                                        .fontDesign(.rounded)
                                    Spacer(minLength: 0)
                                }
                            }
                            .padding()

                            Divider()
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
