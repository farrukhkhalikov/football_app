import React from "react"
import PropTypes from "prop-types"
class Stadium extends React.Component {
  render () {
    const stadium = this.props.stadium;
    const weather = this.props.weather;
    const imagePath = this.props.image_path;
    const imageStyle = {height: "200px"};

    return (
      <div>
        <h4>{stadium.name}</h4>
        <img src={imagePath} style={imageStyle} />

        <h3>Weather Data</h3>

        <label>Current Weather</label>
        <br/>
        <label>Temparture : {weather.main.temp} &#x2109;</label>
        <br/>
        <label>{weather.weather[0].main}</label>
        <br/>
        <img src={"http://openweathermap.org/img/w/"+weather.weather[0].icon+".png"} />
        <br/>
        <label>{weather.weather[0].description}</label>
        <br/>
        <label>Humidity : {weather.main.humidity}%</label>
        <br/>
        <label>Wind Speed : {weather.wind.speed}</label>
      </div>
    );
  }
}

export default Stadium
