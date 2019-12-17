# Swift4 API client for OpenAPIClient

Get the current weather, daily forecast for 16 days, and a three-hour-interval forecast for 5 days for your city. Helpful stats, graphics, and this day in history charts are available for your reference. Interactive maps show precipitation, clouds, pressure, wind around your location stations. Data is available in JSON, XML, or HTML format. **Note**: This sample Swagger file covers the `current` endpoint only from the OpenWeatherMap API. <br/><br/> **Note**: All parameters are optional, but you must select at least one parameter. Calling the API by city ID (using the `id` parameter) will provide the most precise location results.

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec from a remote server, you can easily generate an API client.

- API version: 2.5
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift4Codegen
For more information, please visit [https://openweathermap.org/api](https://openweathermap.org/api)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.openweathermap.org/data/2.5*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CurrentWeatherDataAPI* | [**currentWeatherData**](docs/CurrentWeatherDataAPI.md#currentweatherdata) | **GET** /weather | Call current weather data for one location


## Documentation For Models

 - [Clouds](docs/Clouds.md)
 - [Coord](docs/Coord.md)
 - [Main](docs/Main.md)
 - [Model200](docs/Model200.md)
 - [Rain](docs/Rain.md)
 - [Snow](docs/Snow.md)
 - [Sys](docs/Sys.md)
 - [Weather](docs/Weather.md)
 - [Wind](docs/Wind.md)


## Documentation For Authorization


## app_id

- **Type**: API key
- **API key parameter name**: appid
- **Location**: URL query string


## Author

some_email@gmail.com
