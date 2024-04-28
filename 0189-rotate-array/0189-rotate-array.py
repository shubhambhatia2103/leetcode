class Solution:
    def rotate(self, nums: List[int], k: int) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        k %= len(nums)
      
        # Perform rotation
        # The last k elements are moved to the front and the remainder are appended
        nums[:] = nums[-k:] + nums[:-k]