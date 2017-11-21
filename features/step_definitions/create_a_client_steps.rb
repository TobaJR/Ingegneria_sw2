

 Given("I am on the list of clients") do
   visit clients_path
 end

 When("I click {string}") do |string|
   click_on string
 end


 When("I fill in the form with valid Email") do
   fill_in 'Name', with: 'Massimo'
   fill_in 'Surname', with: 'Maffei'
   fill_in 'Tarif', with: 8
   fill_in 'Age', with: 20
   fill_in 'Email', with: 'massimo.maffei@ciao.com'

   click_on 'Create Client'
 end

 Then("I should see the new client in the list") do
   client = Client.last
   expect(page).to have_content(client.name)
 end




 When("I fill in the form with an invalid Email") do
   fill_in 'Name', with: 'Massimo'
   fill_in 'Surname', with: 'Maffei'
   fill_in 'Tarif', with: 8
   fill_in 'Age', with: 20
   fill_in 'Email', with: 'massimo.it'

   click_on 'Create Client'
 end

 Then("I should see an error of client") do
   expect(page).to have_css('#error_explanation')
 end
