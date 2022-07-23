import React from 'react';

const Book = ({ book: { id, price, image_url, title,created_at } }) => {
  return (
    <div className="movie" key={id}>
      <div>
        <p>{created_at}</p>
      </div>

      <div>
        <img src={image_url !== "N/A" ? image_url : "https://via.placeholder.com/400"} alt={title} />
      </div>

      <div>
        <span>$ {price} </span>
        <h3>{title}</h3> 
      </div>
    </div>
  );

}

export default Book;