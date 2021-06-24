import React from 'react'

class BlogContent extends React.Component {
  render() {
    return (
      <div>
        {this.props.articleText}
      </div>
    )
  }
}

class BlogPost extends React.Component {
  render() {
    return (
      <div>
        <BlogContent articleText={"Dear Reader: Bjarne Stroustrup has the perfect lecture oration."}/>
      </div>
    )
  }
}