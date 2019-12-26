/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.dal.BookDAO;
import com.entity.Book;
import java.util.List;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author LeAnh
 */
public class BookController {
    
    private BookDAO bookDAO;
    
    //ctor
    public BookController() {
        bookDAO = new BookDAO();
    }
    
    //add a new book to database
    public void add(Book b) throws Exception {
        bookDAO.addBook(b);
    }
    
    //output list of all available books to jtable
    public void list(JTable tblBook) throws Exception {
        // Get current model of table
        DefaultTableModel model = (DefaultTableModel) tblBook.getModel();
        // clear old data on table
        model.setRowCount(0);
        // get all available books and output to tblBook
        List<Book> books = bookDAO.selectAll();
        books.forEach(b -> model.addRow(b.toDataRow()));
    }
    
    //search and output the list of all availables books to jtable
    public void search(String column, String keyword,JTable tblBook) throws Exception {
         // Get current model of table
        DefaultTableModel model = (DefaultTableModel) tblBook.getModel();
        // clear old data on table
        model.setRowCount(0);
        // get all available books and output to tblBook
        List<Book> books = bookDAO.select(column, keyword);
        books.forEach(b -> model.addRow(b.toDataRow()));
    }
    
    //return information of a Book by Book ID
    public Book getBookByBookID(String bookID)throws Exception {
        return bookDAO.getBookByBookID(bookID);
    }
    
    //update information of a Book
    public void editBook(Book b)throws Exception  {
        bookDAO.editBook(b);
    }
    
    //delete a book by BookID
    public void deleteBook(String bookID)throws Exception  {
        bookDAO.deleteBook(bookID);
    }
}
