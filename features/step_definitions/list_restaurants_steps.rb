Then(/^I should see the list of restaurants$/) do
  expect(page).to have_content("Restaurants")
end

Then(/^A restaurant-list class div must exist$/) do
  expect(page).to have_selector('div', :class => 'restaurant-list')
end

Then(/^I can click link for a restaurant$/) do
  expect(page).to have_content("Dio's Develish Doner Kebabs")
  click_link ('1')
  expect(current_path).to eq '/restaurants/1'
end

Then(/^I see a list of restaurants$/) do
  see_restaurant_details("Dio's Develish Doner Kebabs",
                          "Bluuuurb of Dio's Develish Kebabs",
                          "desc of doner kebabs",
                          "W1K2SE")

end

Then(/^I can view a restaurant that has link to take my back to all lists$/) do
  expect(page).to have_link('Go back to list of restaurants')
end
