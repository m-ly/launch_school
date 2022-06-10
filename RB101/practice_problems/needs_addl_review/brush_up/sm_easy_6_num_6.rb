#input --> two arrays
#output --> single array with all characters returned

# Rules
# the return array should only have unique values

# Algorithm
# add the two arrays together
# call uniq! on the arrays


def merge(arr1, arr2)
  p (arr1 + arr2).uniq!
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]