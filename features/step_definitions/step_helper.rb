SECRET_PAGE = 'secret'.freeze
ERROR_PAGE = 'error'.freeze
LOGOUT_PAGE = 'logout'.freeze
SECRET_PAGE_TEXT = 'This is the secret page'.freeze
ERROR_PAGE_TEXT = 'Your username & password did not match'.freeze
LOGOUT_PAGE_TEXT = 'You have been logged out'.freeze

Then(/^I should see the (#{SECRET_PAGE}|#{ERROR_PAGE}|#{LOGOUT_PAGE}) page$/) do |_situation|
  case _situation
  when -> (s) { s == SECRET_PAGE } then expected_display_text = SECRET_PAGE_TEXT
  when -> (s) { s == ERROR_PAGE } then expected_display_text = ERROR_PAGE_TEXT
  when -> (s) { s == LOGOUT_PAGE } then expected_display_text = LOGOUT_PAGE_TEXT
  end
  expect(page).to have_content expected_display_text
end
