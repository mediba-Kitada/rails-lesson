class Person

  attr_accessor :height, :weight
  attr_reader :name, :bmi, :judge

  def initialize(name, height, weight)
	@name = name
	@height = height
	@weight = weight
	@bmi = weight / ((height.to_f / 100) ** 2)

	@judge = "やせ" if @bmi < 18.5
    @judge = "標準" if (@bmi >= 18.5)..(@bmi < 25)
    @judge = "肥満" if (@bmi >= 25)..(@bmi < 30)
	@judge = "高度肥満" if @bmi > 30

  end

end
