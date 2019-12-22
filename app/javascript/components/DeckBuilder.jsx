import React from "react";
import { Link } from "react-router-dom";

class Cards extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      cards: []
    };
  }

  componentDidMount() {
      const url = "/api/v1/cards/index";
      fetch(url)
        .then(response => {
          if (response.ok) {
            return response.json();
          }
          throw new Error("Network response was not ok.");
        })
        .then(response => this.setState({ cards: response }))
        .catch(() => this.props.history.push("/"));
  }

  render() {
    const { cards } = this.state;
    const allCards = cards.map((card, index) => (
      <div key={index} className="col-md-6 col-lg-4">
        <div className="card mb-4">
          <img
            src={card.card_url}
            className="card-img-top"
            alt={`${card.card_url}`}
          />
          <div className="card-body">
            <h5 className="card-title">{card.title}</h5>
          </div>
        </div>
      </div>
    ));
    const noCard = (
      <div className="vw-100 vh-50 d-flex align-items-center justify-content-center">
      </div>
    );

    return (
      <>
        <section className="jumbotron jumbotron-fluid text-center">
          <div className="container py-5">
            <h1 className="display-4">Recipes for every occasion</h1>
            <p className="lead text-muted">
              We’ve pulled together our most popular cards, our latest
              additions, and our editor’s picks, so there’s sure to be something
              tempting for you to try.
            </p>
          </div>
        </section>
        <div className="py-5">
          <main className="container">
            <div className="text-right mb-3">
              <Link to="/card" className="btn custom-button">
                Create New Recipe
              </Link>
            </div>
            <div className="row">
              {cards.length > 0 ? allCards : noCard}
            </div>
            <Link to="/" className="btn btn-link">
              Home
            </Link>
          </main>
        </div>
      </>
    );
  }
}

export default Cards;