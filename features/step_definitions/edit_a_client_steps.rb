When("I change the name to {string}") do |string|
  fill_in 'Name', with: string
end

Then("the name of client is {string}") do |string|
  expect(page).to have_content(string)
end
