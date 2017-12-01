 Then("I shouldn't see the client in the list") do
   expect(Client.count).to have_content(0)
 end
