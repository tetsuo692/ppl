
class Ppl::Command::Birthdays < Ppl::Command

  def name
    "birthdays"
  end

  def summary
    "Show a list of upcoming birthdays"
  end

  def index
    today = Date.today

    @address_book.with_birthday.each do |contact|
      puts(
        sprintf("%-20s", contact.id)       +
        sprintf("%-20s", contact.name)     +
        sprintf("%-20s", contact.birthday) +
        sprintf("%d days", contact.until_birthday(today))
      )
    end

  end

end
