# O que será executado antes do cenário
Before do

end

# O que será executado ao fim de cada step
AfterStep do

end

# O que será executado ao fim do cenário
After do |scenario|
  
  scenario_name = scenario.name.tr(' ','_').downcase!

  if scenario.failed?
    tira_foto(scenario_name, 'falha')
  else
    tira_foto(scenario_name, 'sucesso')
  end
  
end