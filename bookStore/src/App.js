import React from "react";
import { useEffect,useState } from "react";
import './App.css'
import Book from './Book'
import icon  from './search.svg'

const API_URL = "http://localhost:3001/api/v1/books"

const App = () => {

  
  const [books,setBooks] = useState([]);
  const [term,setTerm] = useState([]);

  const searchBooks = async (title) => {
    const result = await fetch(`${API_URL}?s=${title}`) 
    const data = await result.json()        
    setBooks(data)
  }
  
  useEffect(() => {
 
    searchBooks('superman')
     
  },[])
  
  
  
  return(

    <div className="app">
      <h1>Book Store</h1>
      <div className="search">
       
       <input value={term} onChange={(e) => setTerm(e.target.value)} />
       <img src={icon} alt="search" onClick={() => searchBooks(term)} />

      </div>
 
      {books.length > 0 ?
      (<div className="container">
         
        {books.map( (book) => (

          
          < Book key={book.id} book={book} />          

        ))
           
           
        }          
         
      </div>)
      :
      (
        <div className="empty">
          <h1>no record</h1>
        </div>
      )
      }

    </div>
     


)

}

export default App;