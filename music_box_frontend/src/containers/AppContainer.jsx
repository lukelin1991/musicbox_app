import React, { Component } from "react";
import SongContainer from "./SongContainer";
import PlaylistContainer from "./PlaylistContainer";
import PlayerContainer from "./PlayerContainer";

import axios from "axios";

export default class appContainer extends Component {
  state = {
    songs: [],
  };

  componentDidMount() {
    axios.get(`http://localhost:3000/songs`).then((res) => {
      const songs = res.data;
      this.setState({ songs });
    });
  }

  render() {
    return (
      <>
        <ul>
          {this.state.songs.map((song) => (
            <>
              <li>{song.name}</li>
              <img src={require(`../songData/jpg/${song.cover_art}`)} />
            </>
          ))}
        </ul>
        <div>
          {/* <PlayerContainer />
          <PlaylistContainer />
          <SongContainer /> */}
        </div>
      </>
    );
  }
}
