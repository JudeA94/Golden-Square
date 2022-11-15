require 'diary'
class Contacts
  def initialize(diary)
    @diary = diary
    @contact_list = []
  end

  def view
    extract_numbers
    @contact_list.join(', ')
  end

  def extract_numbers
    @diary.entries.each do |entry|
      @contact_list << number_from_entry(entry) unless number_from_entry(entry).empty?
    end
  end

  def number_from_entry(entry)
    entry.contents.scan(/0[0-9]{10}/)
  end

  def add(number)
    raise "That's not a valid phone number!" unless number.match?(/0[0-9]{10}/)
    @contact_list << number
  end
end
