
function add(a = 1, b = 1) {
  return a + b
}

it('should return 4', () => {
  expect(add(2, 2)).toBe(4)
})

it('should return 8', () => {
  expect(add(4, 4)).toBe(8)
})

it('should return 16', () => {
  expect(add(8, 8)).toBe(16)
})
