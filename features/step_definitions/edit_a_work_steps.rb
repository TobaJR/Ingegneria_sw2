

Given("there is a work") do
  @work = FactoryBot.create(:work)
end

When("I change the note to {string}") do |string|
  fill_in 'Note', with: string
end


Then("The note of work is {string}") do |string|
  expect(page).to have_content(string)
end



Then("I shouldn't see the changes") do
  pending # Write code here that turns the phrase above into concrete actions
end
