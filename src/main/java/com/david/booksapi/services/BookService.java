package com.david.booksapi.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.david.booksapi.models.Book;
import com.david.booksapi.repositories.BookRepository;

@Service
public class BookService {
private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    // returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    // creates a book
    public Book createBook(Book b) {
        return bookRepository.save(b);
    }
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
    public Book EditById(Long id,
						String title,
						String desc,
						String lang,
						Integer pages) {
    	Book foundBook = findBook(id);
    	foundBook.setTitle(title);
    	foundBook.setDescription(desc);
    	foundBook.setLanguage(lang);
    	foundBook.setNumOfPages(pages);
  
    	return bookRepository.save(foundBook);

    }
	public Book updateBook(Long id, String title, String desc, String lang, Integer numOfPages) {
		// TODO Auto-generated method stub
		return null;
	}
	public void deleteBook(Long id) {
		// TODO Auto-generated method stub
		
	}

}
