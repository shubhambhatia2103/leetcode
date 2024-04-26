class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        maxsub = nums[0]
        CurrSum = 0
        
        for n in nums:
            if CurrSum < 0:
                CurrSum = 0
            CurrSum +=n
            maxsub = max(maxsub , CurrSum)
        return maxsub