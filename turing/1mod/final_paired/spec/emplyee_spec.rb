require './lib/employee'

RSpec.describe Employee do
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
  end

  describe "Make employee" do
    it "exists" do
      expect(@bobbi).to be_a(Employee)
    end
    it "finds name" do
      expect(@bobbi.name).to eq("Bobbi Jaeger")
    end
    it "finds age" do
      expect(@bobbi.age).to eq(30)
    end
    it "finds salery" do
      expect(@bobbi.salary).to eq(100000)
    end
  end
end
