 Given("there is an old client called {string}") do |client_name|
   FactoryBot.create(:client, name: client_name)
 end

 When("I click the button {string}") do |string|
   click_on string
 end

 Then("I shouldn't see the client in the list") do
   expect(Client.count).to have_content(0)
 end
