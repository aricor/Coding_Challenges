def two_sum(nums, target)    
    nums.each_with_index do |element1, index1|
        nums[index1+1..-1].each_with_index do |element2, index2|
            return [index1,1+index1+index2] if element1 + element2 == target
        end
    end
end

nums = [2,7,11,15]
target = 9
p two_sum(nums, target)

nums = [1,1,1]
target = 2
p two_sum(nums, target)