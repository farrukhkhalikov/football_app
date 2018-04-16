import React from "react"
import PropTypes from "prop-types"
class Team extends React.Component {
  render () {
    const imgStyle = {height: "50px",width: "50px"}
    const row = []
    const stadiums = this.props.stadiums

    for (var i = 0; i < this.props.teams.length; i++) {
      var data = this.props.teams[i]
      var stadium = stadiums[Math.floor(Math.random()*stadiums.length)];
      row.push(
        <tr>
          <td key={data.name}>{data.name}</td>
          <td key={data.shortName}>{data.shortName}</td>
          <td>
            <a href={"/stadiums?stadium_id="+ stadium.id}>{stadium.name}</a>
          </td>
          <td>
            <img src={data.crestUrl} style={imgStyle} />
          </td>
          <td>
            <a href={"/players?team_id="+ data.id}>Show Players</a>
          </td>
        </tr>
      )
    }
      return (
      <table class="table">
        <thead>
          <th>Name</th>
          <th>Short Name</th>
          <th>Stadium</th>
          <th>Logo</th>
          <th>Players</th>
        </thead>
        <tbody>
          {row}
        </tbody>
      </table>
      );
  }
}

Team.propTypes = {
  name: PropTypes.string,
  shortName: PropTypes.string,
  stadium: PropTypes.node,
  logo: PropTypes.string,
  players: PropTypes.string
};
export default Team
