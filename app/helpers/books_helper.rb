module BooksHelper
	def collect_book_data(books)
		rows = []
		books.each do |b|
			rows << [b.name, 
				b.isbn, 
				b.price, 
				b.author_name, 
				b.category_name, 
				b.is_published?,
				"<a class='btn btn-primary publish_action' href='#{book_publish_path(b)}' role='button'>Publish</a>
				<a class='btn btn-primary' href='#{book_path(b)}' role='button'>Show</a>
				<a class='btn btn-primary' href='#{edit_book_path(b)}' role='button'>Edit</a>
				<a data-confirm='Are you sure?' class='btn btn-danger' data-method='delete' href='#{book_path(b)}'>Destroy</a>"
			]
		end
		rows
	end

	def publish_button_title(book)
		(book.publish_status == true ? "Unpublish" : "Publish")
	end


end
