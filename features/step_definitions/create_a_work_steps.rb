Given("there is a client called {string}") do |client_name|
   FactoryBot.create(:client, name: client_name)
end

When("I click on {string}") do |string|
  click_on string
end




 Given("I am on the list of works of {string}") do |client_name|
   client = Client.find_by name: client_name
   visit client_path(client)
 end

 When("I fill in the form with valid Note") do
   fill_in 'Note', with: 'ciao'
   fill_in 'Hours', with: 13

   click_on 'Create Work'
 end

 Then("I should see the new work in the list") do
   work = Work.last
   expect(page).to have_content(work.note)
 end




 When("I fill in the form with an invalid Note") do
   fill_in 'Note', with: ''
   fill_in 'Hours', with: 13

   click_on 'Create Work'
 end

 When("I fill in the form with valid data") do
   fill_in 'Note', with: 'ehi'
   fill_in 'Hours', with: 13

   click_on 'Create Work'
 end
