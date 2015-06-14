var Card = React.createClass({
  render: function() {
    return (
      <div className="col-md-5 card-image-holder">
        <div className="image-wrapper">
          <h1>{ this.props.card.name }</h1>
          <img src={ this.props.card.image_url} height="370" />
        </div>
      </div>
    );
  }
});
