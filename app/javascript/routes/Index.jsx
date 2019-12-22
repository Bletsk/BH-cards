import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import DeckBuilder from "../components/DeckBuilder";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={DeckBuilder} />
    </Switch>
  </Router>
);