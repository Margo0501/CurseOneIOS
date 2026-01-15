//
//  WeatherModel.swift
//  WeatherApplication
//
//  Created by Маргарита Куратник on 28.09.25.
//
import UIKit
struct WeatherData {
    let cityName: String
    let date: String
    let temperature: Double
    let weatherDescription: String
    let feelsLike: Double
    let humidity: Double
    let windSpeed: Double
    let pressure: Double
    let uvIndex: Double
    let hourlyForecast: [HourlyWeather]
    let dailyForecast: [DailyWeather]
    
    struct HourlyWeather {
        let hour: String
        let temperature: Double
        let weatherIcon: String
    }

    struct DailyWeather {
        let dayOfWeek: String
        let weatherIcon: String 
        let minTemperature: Double
        let maxTemperature: Double
    }
}
