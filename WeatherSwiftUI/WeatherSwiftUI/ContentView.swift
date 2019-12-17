//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Полина on 14.12.2019.
//  Copyright © 2019 Станислав Белых. All rights reserved.
//

import SwiftUI

final class CityList: ObservableObject{
    var id = UUID()
    @Published var cityList: [CityWeatherModel] = []
    
    func addCityName(nameCity: String){
        let cityResponse = CurrentWeatherDataAPI.currentWeatherData(q: nameCity, units: .metric) {city, error in
         
            let city: CityWeatherModel = CityWeatherModel(name: city?.name ?? "Не правильное название города", temp: city?.main?.temp ?? 999)
            self.cityList.append(city)
        }
        print(cityResponse)
    }
    
}
struct CityWeatherModel: Identifiable {
    let id = UUID()
    let name: String
    let temp: Double
}



struct ContentView: View {
    
    @EnvironmentObject var cityList: CityList
    @State private var text: String = " "
    
    
    var body: some View {
        //        VStack{
        //            HStack{
        //                TextField("Введите название города", text: $text)
        //                Button("Add") {
        //                    self.cityList.addCityName(nameCity: self.text)
        //                }
        //            }
        //            .padding()
        NavigationView{
            VStack{
                HStack{
                    Text("Enter city name")
                    TextField("Enter city name", text: $text)
                        .border(Color.blue, width: 2)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    
                    Button("Add") {
                        self.cityList.addCityName(nameCity: self.text)
                    }
                }
                .padding()
                List(cityList.cityList, id: \.id){ city in
                    Text("\(city.name)")
                    NavigationLink(destination: WetherCityView(cityName: city.name, cityTemp: city.temp)){
                        Text(" ")
                    }
                }
                .navigationBarTitle("Cities")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
