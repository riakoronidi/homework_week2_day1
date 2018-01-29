require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test


  #Extension

  def test_library_has_books
    library = Library.new([])
    assert_equal([],library.books)
  end

  def test_get_info_for_title
    #arrange
    book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }

    library = Library.new([book])
    #act
    book_info = library.get_info_for_title("lord_of_the_rings")
    #assert
    assert_equal(book, book_info)
  end


  def test_get_info_for_rental_details

    book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }

    library = Library.new([book])

    rental_details = library.get_rental_info("lord_of_the_rings")

    assert_equal(book[:rental_details], rental_details)
  end

  def test_add_book
    book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }

    book_2 = {
      title: "Little Prince",
      rental_details: {
        student_name: "",
        date: ""
      }
    }

    library = Library.new([book])

    added_book = library.add_new_book(book_2)
    assert_equal(book_2, added_book)

  end


  def test_change_rental_details

    book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }

    library = Library.new([book])

    updated_rental_details = library.change_rental_details("lord_of_the_rings","Jeff","01/12/16")
    assert_equal(book[:rental_details], updated_rental_details)
  end

end
