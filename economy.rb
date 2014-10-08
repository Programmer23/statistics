#reads data
f = File.new("data.csv", "r")
data = f.readlines
f.close

#adds every value in economies and stores in the variable total
total = 0
data.each do |economies|
	total = total.to_f + economies.split(",")[1].to_f
end
#calulates mean
mean = total/54	
puts "The mean of this data set is: " + mean.to_s
#calculates z-scores and standard deviation
zscore_sum = 0
z_score = []
data.each do |value|
	z_score.push( (value.split(",")[1].to_f - mean)**2 )
	zscore_sum = zscore_sum.to_f + z_score[1].to_f
end	
standard_d = (zscore_sum/54)**1/2
puts "The z-scores are: " + z_score.to_s
puts "The standard deviation is: " + standard_d.to_s
