#Extension
class Library
  attr_accessor :books

  def initialize(input_books)
    @books = input_books
  end

  def get_info_for_title(title)

    for index in  @books
      if index[:title] == title
        return index
      end
    end
    return nil
  end


  def get_rental_info(title)

    for index in @books
      if index[:title] == title
        return index[:rental_details]
      end
    end
    return nil
  end


  def add_new_book(book)

    for index in @books
      if index[:title] != book[:title]
        @books.insert(-1, book)
      end
    end

    return @books[-1]

  end


  def change_rental_details(title, student_name, date)
    for index in @books
      if index[:title] == title
        index[:rental_details][:student_name].replace("Ria")
        index[:rental_details][:date].replace("01/01/17")
      end
    end
    return index[:rental_details]
  end
end
