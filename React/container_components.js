class BookList extends Component {
  constructor(props) {
    super(props);
 
    this.state = {
      books: []
    };
  }
 
  componentDidMount() {
    fetch('https://learn-co-curriculum.github.io/books-json-example-api/books.json')
      .then(response => response.json())
      .then(bookData => this.setState({ books: bookData.books }))
  }
 
  renderBooks = () => {
    return this.state.books.map(book => {
      return (
        <div className="book">
          <img src={ book.img_url } />
          <h3>{ book.title }</h3>
        </div>
      )
    })
  }
 
  render() {
    return (
      <div className="book-list">
        { this.renderBooks() }
      </div>
    )
  }
}

// Container pattern:

import React from 'react';
import BookList from './BookList';
 
class BookListContainer extends React.Component {
  constructor() {
    super()
 
    this.state = {
      books: []
    };
  }
 
  componentDidMount() {
    fetch('https://learn-co-curriculum.github.io/books-json-example-api/books.json')
      .then(response => response.json())
      .then(bookData => this.setState({ books: bookData.books }))
  }
 
  render() {
    return <BookList books={this.state.books} />
  }
}
 
export default BookListContainer;

// src/BookList.js
import React from 'react';
import Book from './Book';
 
const BookList = ({ books }) => (
  <div className="book-list">
    { books.map(book => <Book title={book.title} img_url={book.img_url} />) }
  </div>
)
 
export default BookList;


// src/Book.js
import React from 'react';
 
const Book = ({ title, img_url }) => (
  <div className="book">
    <img src={ img_url } alt={title}/>
    <h3>{ title }</h3>
  </div>
)
 
export default Book;






























