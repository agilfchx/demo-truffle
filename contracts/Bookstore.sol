// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bookstore {
    struct Book{
        string title;
        string author;
        uint256 price;
        uint256 stock;
    }

    mapping(uint256 => Book) books;

    function addBook(uint256 id, string memory title, string memory author, uint256 price, uint256 stock) public {
        books[id] = Book(title, author, price, stock);
    }

    function getBook(uint256 id) public view returns (string memory, string memory, uint256, uint256) {
        Book memory book = books[id];
        return (book.title, book.author, book.price, book.stock);
    }
}