#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/divisible-sum-pairs

def divisibleSumPairs(n, k, ar)
    res = []
    ar.each_with_index{|e1,i|
        ar[i+1..ar.length].each_with_index{|e2,j|
            #puts "e1->#{e1}: i->#{i}: e2->#{e2}: k->#{j+i}: (e1+e2)%k->#{(e1+e2)%k}"
            res << [i,j+i+1] if (e1+e2)%k == 0
        }
    }
    res.length
end




n=6
k=3
ar= [1, 3, 2, 6, 1, 2]
puts divisibleSumPairs(n, k, ar)