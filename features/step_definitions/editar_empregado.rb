Dado(/^que esteja logado no site orangehrm com perfil admin$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in "txtUsername", :with=> "Admin"
  fill_in "txtPassword", :with=> "admin" 
  page.find(:id, "btnLogin").click
  sleep 3
end

Quando(/^acessar a aba PIM e clicar em Employee List$/) do
   page.find(:id, "menu_pim_viewPimModule").click
   page.find(:id, "menu_pim_viewEmployeeList").click
   sleep 3
   end

Entao(/^o usuario editara um empregado$/) do
 
  #href="/index.php/pim/viewEmployee/empNumber/1"

  page.find(:css, "#resultTable > tbody > tr:nth-child(1) > td:nth-child(3) > a").click

  page.find(:id, "btnSave").click
  page.find(:id, "personal_cmbMarital").click
  select 'Single', from: 'personal_cmbMarital'
  page.find(:id, "personal_DOB").set(true)
  fill_in "personal_DOB", :with=> "1991-06-25" 
  page.find(:id, "btnSave").click
  expect(page).to have_content 'Successfully Saved'
  sleep 5
end