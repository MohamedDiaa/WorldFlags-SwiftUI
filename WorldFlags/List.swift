//
//  List.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2025-01-30.
//
import SwiftUI

let countries = [
    "Jamaica",
    "Antigua_and_Barbuda",
    "Honduras",
    "Chile",
    "Colombia",
    "Guyana",
    "Argentina",
    "SolomonIslands",
    "Indonesia",
    "Tonga",
    "India",
    "Bangladesh",
    "Thailand",
    "Japan",
    "Armenia",
    "NorthKorea",
    "Georgia",
    "Laos",
    "China",
    "Turkey",
    "Azerbaijan",
    "Switzerland",
    "Germany",
    "Belgium",
    "Russia",
    "Ukraine",
    "Italy",
    "Austria",
    "Scotland",
    "Netherlands",
    "France",
    "Greece",
    "Czechia",
    "Madagascar",
    "Mali",
    "IvoryCoast",
    "Chad",
    "CentralAfrica",
    "SierraLeone",
    "Botswana",
    "Cameroon",
    "Congo",
    "Mauritius",
    "Nigeria",
    "Niger",
    "BurkinaFaso",
    "Comoros",
    "Egypt",
    "Algeria",
    "Morocco",
    "Bahrain",
    "Qatar",
    "Israel",
    "Syria",
    "United_Arab_Emirates",
    "Yemen",
    "Iraq"
]


@ViewBuilder
func DestinationCountry(name: String) -> some View {

    VStack {
        switch name {

        case "Jamaica": Jamaica.init()
        case "Antigua_and_Barbuda": Antigua_and_Barbuda.init()
        case "Honduras" : Honduras.init()
        case "Chile": Chile.init()
        case "Colombia": Colombia.init()
        case "Guyana": Guyana.init()
        case "Argentina": Argentina.init()
        case "SolomonIslands": SolomonIslands.init()
        case "Indonesia": Indonesia.init()
        case "Tonga": Tonga.init()
        case "India": India.init()
        case "Bangladesh": Bangladesh.init()
        case "Thailand": Thailand.init()
        case "Japan": Japan.init()
        case "Armenia": Armenia.init()
        case "NorthKorea": NorthKorea.init()
        case "Georgia": Georgia.init()
        case "Laos": Laos.init()
        case "China": China.init()
        case "Turkey": Turkey.init()
        case "Azerbaijan": Azerbaijan.init()
        case "Switzerland": Switzerland.init()
        case "Germany": Germany.init()
        case "Belgium": Belgium.init()
        case "Russia": Russia.init()
        case "Ukraine": Ukraine.init()
        case "Italy": Italy.init()
        case "Austria": Austria.init()
        case "Scotland": Scotland.init()
        case "Netherlands": Netherlands.init()
        case "France": France.init()
        case "Greece": Greece.init()
        case "Czechia": Czechia.init()
        case "Madagascar": Madagascar.init()
        case "Mali": Mali.init()
        case "IvoryCoast": IvoryCoast.init()
        case "Chad": Chad.init()
        case "CentralAfrica": CentralAfrica.init()
        case "SierraLeone": SierraLeone.init()
        case "Botswana": Botswana.init()
        case "Cameroon": Cameroon.init()
        case "Congo": Congo.init()
        case "Mauritius": Mauritius.init()
        case "Nigeria": Nigeria.init()
        case "Niger": Niger.init()
        case "BurkinaFaso": BurkinaFaso.init()
        case "Comoros": Comoros.init()
        case "Egypt": Egypt.init()
        case "Algeria": Algeria.init()
        case "Morocco": Morocco.init()
        case "Bahrain":  Bahrain.init()
        case "Qatar" : Qatar.init()
        case "Israel": Israel.init()
        case "Syria": Syria.init()
        case "United_Arab_Emirates": United_Arab_Emirates.init()
        case "Yemen": Yemen.init()
        case "Iraq": Iraq.init()

        default: Sweden.init()
        }
    }
    .background(RoundedRectangle(cornerRadius: 10).fill(.gray.shadow(.drop(color: .black, radius: 10))))
    .navigationTitle(name)
    .safeAreaPadding()
    .padding()
}
