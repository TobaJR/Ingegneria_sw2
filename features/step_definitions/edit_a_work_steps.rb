

Given("there is a work") do
  @work = FactoryBot.create(:work)
end

Given("I am on looking at the details of a work") do
  visit edit_client_work_path(@work.client, @work)
end

When("I change the note to {string}") do |string|
  fill_in 'Note', with: string
end

Then("I should view the change") do

end
