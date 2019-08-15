@contacts = [{name: "Devyn", phone: "801-333-4444"},
            {name: "buddy", phone: "333-333-4444"},
            {name: "jason", phone: "222-222-3333"},
            {name: "charley", phone: "111-222-3333"} ]

def main_menu
  
  puts "~~~Ruby Contact List~~~"
  puts ""
  puts "1) View Contacts" 
  puts "2) add Contact"
  puts "3) Edit Contact"
  puts "4) Delete Contact"
  puts "5) Exit"
  

  input = gets.to_i
    case input
     when 1
        show_contacts
        sleep 2
        main_menu
      when 2
        add_contact 
        sleep 1
        main_menu
      when 3
        edit_contact
        sleep 2
        main_menu
      when 4
        delete_contact
        sleep 2
        main_menu
      when 5
        exit
      end
    end
    
  def show_contacts
    puts ""
      puts "contacts:"
      @contacts.each_with_index do |contacts,index|
      puts "#{index + 1}, #{contacts}"
    end
  end
  
  def add_contact
    puts "Add New Contact:"
    print ">"
    input = gets.strip
    @contacts.push(input)
  end

  def edit_contact
    puts""    
    puts "which contact would you like to edit?"
      show_contacts
      picks = gets.to_i-1
      puts "what do you want to change name to?"
        print ">"
        @contacts[picks]= gets.strip
  end

  def delete_contact
    "which contact would you like to delete?"
    show_contacts
    remove = gets.to_i - 1
    @contacts.delete_at(remove)
    "contact deleted!"
  end

  main_menu
