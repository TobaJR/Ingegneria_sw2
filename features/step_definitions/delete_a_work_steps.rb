When("I am on the list of works") do
   visit client_path(@work.client)
end

Then("I shouldn't see the work in the list") do
  expect(Work.count).to have_content(0)
end
