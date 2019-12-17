# CurrentWeatherDataAPI

All URIs are relative to *https://api.openweathermap.org/data/2.5*

Method | HTTP request | Description
------------- | ------------- | -------------
[**currentWeatherData**](CurrentWeatherDataAPI.md#currentweatherdata) | **GET** /weather | Call current weather data for one location


# **currentWeatherData**
```swift
    open class func currentWeatherData(q: String? = nil, id: String? = nil, lat: String? = nil, lon: String? = nil, zip: String? = nil, units: Units_currentWeatherData? = nil, lang: Lang_currentWeatherData? = nil, mode: Mode_currentWeatherData? = nil, completion: @escaping (_ data: Model200?, _ error: Error?) -> Void)
```

Call current weather data for one location

Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let q = "q_example" // String | **City name**. *Example: London*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by a comma; use ISO 3166 country codes. (optional)
let id = "id_example" // String | **City ID**. *Example: `2172797`*. You can call by city ID. The API responds with the exact result. The List of city IDs can be downloaded [here](http://bulk.openweathermap.org/sample/). You can include multiple cities in this parameter &mdash; just separate them by commas. The limit of locations is 20. *Note: A single ID counts as a one API call. So, if you have city IDs, it's treated as 3 API calls.* (optional)
let lat = "lat_example" // String | **Latitude**. *Example: 35*. The latitude coordinate of the location of your interest. Must use with `lon`. (optional)
let lon = "lon_example" // String | **Longitude**. *Example: 139*. Longitude coordinate of the location of your interest. Must use with `lat`. (optional)
let zip = "zip_example" // String | **Zip code**. Search by zip code. *Example: 95050,us*. Please note that if the country is not specified, the search uses USA as a default. (optional)
let units = "units_example" // String | **Units**. *Example: imperial*. Possible values: `standard`, `metric`, and `imperial`. When you do not use the `units` parameter, the format is `standard` by default. (optional) (default to .imperial)
let lang = "lang_example" // String | **Language**. *Example: en*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - `ar`, Bulgarian - `bg`, Catalan - `ca`, Czech - `cz`, German - `de`, Greek - `el`, English - `en`, Persian (Farsi) - `fa`, Finnish - `fi`, French - `fr`, Galician - `gl`, Croatian - `hr`, Hungarian - `hu`, Italian - `it`, Japanese - `ja`, Korean - `kr`, Latvian - `la`, Lithuanian - `lt`, Macedonian - `mk`, Dutch - `nl`, Polish - `pl`, Portuguese - `pt`, Romanian - `ro`, Russian - `ru`, Swedish - `se`, Slovak - `sk`, Slovenian - `sl`, Spanish - `es`, Turkish - `tr`, Ukrainian - `ua`, Vietnamese - `vi`, Chinese Simplified - `zh_cn`, Chinese Traditional - `zh_tw`. (optional) (default to .en)
let mode = "mode_example" // String | **Mode**. *Example: html*. Determines the format of the response. Possible values are `xml` and `html`. If the mode parameter is empty, the format is `json` by default. (optional) (default to .json)

// Call current weather data for one location
CurrentWeatherDataAPI.currentWeatherData(q: q, id: id, lat: lat, lon: lon, zip: zip, units: units, lang: lang, mode: mode) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String** | **City name**. *Example: London*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by a comma; use ISO 3166 country codes. | [optional] 
 **id** | **String** | **City ID**. *Example: &#x60;2172797&#x60;*. You can call by city ID. The API responds with the exact result. The List of city IDs can be downloaded [here](http://bulk.openweathermap.org/sample/). You can include multiple cities in this parameter &amp;mdash; just separate them by commas. The limit of locations is 20. *Note: A single ID counts as a one API call. So, if you have city IDs, it&#39;s treated as 3 API calls.* | [optional] 
 **lat** | **String** | **Latitude**. *Example: 35*. The latitude coordinate of the location of your interest. Must use with &#x60;lon&#x60;. | [optional] 
 **lon** | **String** | **Longitude**. *Example: 139*. Longitude coordinate of the location of your interest. Must use with &#x60;lat&#x60;. | [optional] 
 **zip** | **String** | **Zip code**. Search by zip code. *Example: 95050,us*. Please note that if the country is not specified, the search uses USA as a default. | [optional] 
 **units** | **String** | **Units**. *Example: imperial*. Possible values: &#x60;standard&#x60;, &#x60;metric&#x60;, and &#x60;imperial&#x60;. When you do not use the &#x60;units&#x60; parameter, the format is &#x60;standard&#x60; by default. | [optional] [default to .imperial]
 **lang** | **String** | **Language**. *Example: en*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - &#x60;ar&#x60;, Bulgarian - &#x60;bg&#x60;, Catalan - &#x60;ca&#x60;, Czech - &#x60;cz&#x60;, German - &#x60;de&#x60;, Greek - &#x60;el&#x60;, English - &#x60;en&#x60;, Persian (Farsi) - &#x60;fa&#x60;, Finnish - &#x60;fi&#x60;, French - &#x60;fr&#x60;, Galician - &#x60;gl&#x60;, Croatian - &#x60;hr&#x60;, Hungarian - &#x60;hu&#x60;, Italian - &#x60;it&#x60;, Japanese - &#x60;ja&#x60;, Korean - &#x60;kr&#x60;, Latvian - &#x60;la&#x60;, Lithuanian - &#x60;lt&#x60;, Macedonian - &#x60;mk&#x60;, Dutch - &#x60;nl&#x60;, Polish - &#x60;pl&#x60;, Portuguese - &#x60;pt&#x60;, Romanian - &#x60;ro&#x60;, Russian - &#x60;ru&#x60;, Swedish - &#x60;se&#x60;, Slovak - &#x60;sk&#x60;, Slovenian - &#x60;sl&#x60;, Spanish - &#x60;es&#x60;, Turkish - &#x60;tr&#x60;, Ukrainian - &#x60;ua&#x60;, Vietnamese - &#x60;vi&#x60;, Chinese Simplified - &#x60;zh_cn&#x60;, Chinese Traditional - &#x60;zh_tw&#x60;. | [optional] [default to .en]
 **mode** | **String** | **Mode**. *Example: html*. Determines the format of the response. Possible values are &#x60;xml&#x60; and &#x60;html&#x60;. If the mode parameter is empty, the format is &#x60;json&#x60; by default. | [optional] [default to .json]

### Return type

[**Model200**](Model200.md)

### Authorization

[app_id](../README.md#app_id)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

