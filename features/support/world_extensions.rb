module Authenticate
  def login
    visit('http://localhost:4567')
    fill_in('username', with: 'Bob')
    fill_in('password', with: 'Bob')
    find('input[value="Login"]').click
  end
end
World(Authenticate)
