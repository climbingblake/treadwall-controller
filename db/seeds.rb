require "sinatra/activerecord"
Problem.delete_all
Led.delete_all

Problem.create!(id: 1, name: "The X",  description: "",  setter: "AI",  grade: "V0")

Led.create!(address: '[9,0]', problem_id: 1, rgb: 'green')
Led.create!(address: '[8,1]', problem_id: 1, rgb: 'green')
Led.create!(address: '[7,2]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[6,3]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[5,4]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[4,5]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[3,6]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[2,7]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[1,8]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[0,9]', problem_id: 1, rgb: 'blue')

Led.create!(address: '[0,0]', problem_id: 1, rgb: 'black')
Led.create!(address: '[1,1]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[2,2]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[3,3]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[4,4]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[5,5]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[6,6]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[7,7]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[8,8]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[9,9]', problem_id: 1, rgb: 'blue')

Led.create!(address: '[1,9]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[2,9]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[3,9]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[4,9]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[5,9]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[6,9]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[7,9]', problem_id: 1, rgb: 'blue')
Led.create!(address: '[8,9]', problem_id: 1, rgb: 'blue')


# second problem
Problem.create!(id: 2, name: "Real Problem 1",  description: "",  setter: "AI",  grade: "V1")
Led.create!(address: '[9,5]', problem_id: 2, rgb: 'green')
Led.create!(address: '[9,6]', problem_id: 2, rgb: 'green')
Led.create!(address: '[8,3]', problem_id: 2, rgb: 'blue')
Led.create!(address: '[7,3]', problem_id: 2, rgb: 'blue')
Led.create!(address: '[4,0]', problem_id: 2, rgb: 'blue')
Led.create!(address: '[3,4]', problem_id: 2, rgb: 'blue')
Led.create!(address: '[3,5]', problem_id: 2, rgb: 'blue')
Led.create!(address: '[2,7]', problem_id: 2, rgb: 'blue')
Led.create!(address: '[0,7]', problem_id: 2, rgb: 'black')

Led.create!(address: '[0,0]', problem_id: 2, rgb: 'black')
Led.create!(address: '[1,1]', problem_id: 2, rgb: 'blue')
Led.create!(address: '[2,2]', problem_id: 2, rgb: 'blue')
Led.create!(address: '[3,3]', problem_id: 2, rgb: 'blue')
Led.create!(address: '[4,4]', problem_id: 2, rgb: 'blue')
