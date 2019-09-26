# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals.sort_by! { |a| a[0] }
  ans, tmp = [], intervals[0]
  if intervals.length > 0
    intervals[1..-1].each do |arr|
      if tmp[1] < arr[0]
        ans << tmp
        tmp = arr
      else
        tmp[0] = arr[0] <= tmp[0] ? arr[0] : tmp[0]
        tmp[1] = tmp[1] <= arr[1] ? arr[1] : tmp[1]
      end
    end
    ans << tmp
  end
  ans
end