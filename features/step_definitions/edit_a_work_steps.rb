

Given("there is a work") do
  @work = FactoryBot.create(:work)
end

When("I change the note to {string}") do |string|
  fill_in 'Note', with: string
end


Then("The note of work is {string}") do |string|
  expect(page).to have_content(string)
end
