require './lib/department'
require './lib/employee'

RSpec.describe Department do
  before(:each) do
    @customer_service = Department.new("Customer Service")
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
  end

  describe "Iteration 2" do
    it "shows name" do
      expect(@customer_service.name).to eq("Customer Service")
    end
    it "shows employees" do
      expect(@customer_service.employees).to eq([])
    end
    it "hire employees" do
      @customer_service.hire(@bobbi)
      @customer_service.hire(@aaron)
      expect(@customer_service.employees.length).to eq(2)
      expect(@customer_service.employees).to include(Employee)
    end
    it "shows expenses" do
      expect(@customer_service.expenses).to eq(0)
      @customer_service.expense(100)
      @customer_service.expense(25)
      expect(@customer_service.expenses).to eq(125)
    end
  end
end
