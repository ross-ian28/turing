require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Department do
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    @pabu = Employee.new({name: "Pabu Ross", age: "1", salary: "100000000000000"})
    @customer_service = Department.new("Customer Service")
    @ferret_nation = Department.new("Ferret Nation")
    @customer_service.hire(@bobbi)
    @customer_service.hire(@aaron)
    @ferret_nation.hire(@pabu)
    @customer_service.expense(100)
    @ferret_nation.expense(600)
    @budget = Budget.new(2022)
    @budget.add_department(@customer_service)
    @budget.add_department(@ferret_nation)
  end

  describe "Iteration 3" do
    it "exists" do
      expect(@budget).to be_a(Budget)
    end
    it "has a year" do #each budget has a year
      expect(@budget.year).to eq(2022)
    end
    it "shows departments" do #list all of its departments
      expect(@budget.departments).to eq([@customer_service, @ferret_nation])
    end
    it "shows cheap department" do #list all departments with expenses less than $500
      expect(@budget.cheap_departments).to eq([@customer_service])
    end
    it "shows all employees salaries" do #list all employees' salaries
      expect(@budget.employees_saleries).to eq([100000, 90000, 100000000000000])
    end
  end
end
