var Card = React.createClass({
  flipCard: function() {
    console.log("FLIP");
  },
  render: function() {
    console.log(this.props.card);
    return (
      <div className="col-md-5 card-image-holder">

        <div className="card-flipper">

          <div className="image-wrapper front-side animated" onClick={this.flipCard} >
            <h1 className="flip-card-front" >{ this.props.card.name }</h1>
            <img src={ this.props.card.image_url} height="370" id="large-image"/>
          </div>

          <div className="image-wrapper flip-side animated" onClick={this.flipCard}>
            <h1 className="flip-card-front">{ this.props.card.name }</h1>
            <img src={ this.props.card.image_url} height="270" />
            <p>{this.props.card.description}</p>
          </div>

        </div>
      </div>

    );
  }
});
