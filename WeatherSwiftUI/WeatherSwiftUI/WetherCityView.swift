//
//  WetherCityView.swift
//  WeatherSwiftUI
//
//  Created by Полина on 17.12.2019.
//  Copyright © 2019 Станислав Белых. All rights reserved.
//

import SwiftUI

struct WetherCityView: View {
    var cityName: String
    var cityTemp: Double
    
    var body: some View {
        VStack{
            Text(cityName)
            Text("\(cityTemp)")
        }
        
    }
}

struct WetherCityView_Previews: PreviewProvider {
    static var previews: some View {
        WetherCityView(cityName: "City", cityTemp: 999)
    }
}
