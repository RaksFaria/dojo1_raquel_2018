Dado(/^que o usuario esteja logado no site orangehrm com perfil admin$/) do
	visit "http://opensource.demo.orangehrmlive.com/"
  	fill_in "txtUsername", :with=> "Admin"
  	fill_in "txtPassword", :with=> "admin" 
  	page.find(:id, "btnLogin").click
  sleep 3
end
  

Quando(/^acessar a aba PIM e clicar em Add Employee$/) do
  page.find(:id, "menu_pim_viewPimModule").click
  page.find(:id, "menu_pim_addEmployee").click
   sleep 3 
 end

Entao(/^o usuario adicionara um empregado$/) do
  fill_in "firstName", :with=> "Harry"
  fill_in "lastName", :with=> "Potter"

  #salvar
  page.find(:id, "btnSave").click
  #editar
  page.find(:id, "btnSave").click
  #escolher o genero
  page.find(:id, "personal_optGender_1").set(true)
  #Data
  page.find(:id, "personal_DOB").set(true)
  fill_in "personal_DOB", :with=> "1991-06-25" 
  fill_in "personal_txtLicExpDate", :with=> "2017-04-04" 
  #escolher o país
  page.find(:id, "personal_cmbNation").click
  select 'Australian', from: 'personal_cmbNation'
  sleep 3
  page.find(:id, "btnSave").click
  expect(page).to have_content  'Successfully Saved'
 end