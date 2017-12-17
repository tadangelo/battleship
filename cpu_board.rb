@board = [{
  a: [false, false, true, true, true, true, true, false, false, false],
  b: [false, false, false, false, false, false, false, false, false, false],
  c: [false, false, false, false, false, false, false, false, false, false],
  d: [true, true, true, true, false, false, false, false, false, false],
  e: [false, false, false, false, false, false, false, false, false, false],
  f: [false, false, false, false, false, false, false, false, true, true],
  g: [false, false, true, false, false, false, false, false, false, false],
  h: [false, false, true, false, false, false, false, false, false, false],
  i: [false, false, true, false, false, false, false, true, true, true],
  j: [false, false, false, false, false, false, false, false, false, false]
}, {
  a: [false, false, false, false, true, true, true, false, false, true],
  b: [false, false, false, false, false, false, false, false, false, true],
  c: [false, false, false, false, false, false, false, false, false, true],
  d: [true, false, false, false, false, false, false, false, true, true],
  e: [true, false, false, false, false, false, false, false, true, false],
  f: [false, false, false, false, false, false, false, false, true, false],
  g: [false, false, true, true, true, true, true, false, false, false],
  h: [false, false, false, false, false, false, false, false, false, false],
  i: [false, false, false, false, false, false, false, false, false, false],
  j: [false, false, false, false, false, false, false, false, false, false]
}, {
  a: [false, false, true, true, false, false, false, false, false, false],
  b: [false, false, false, false, false, false, false, false, false, false],
  c: [false, false, false, false, false, false, false, false, false, true],
  d: [true, false, false, false, false, false, false, false, false, true],
  e: [true, false, false, false, false, false, false, false, false, true],
  f: [true, false, false, false, false, false, false, false, false, true],
  g: [false, false, false, true, false, false, false, false, false, false],
  h: [false, false, false, true, false, false, false, false, false, false],
  i: [false, false, false, true, true, true, true, true, true, false],
  j: [false, false, false, false, false, false, false, false, false, false]
}, {
  a: [false, false, true, false, false, false, false, false, false, false],
  b: [false, false, true, false, true, false, true, true, true, true],
  c: [false, false, false, false, true, false, false, false, false, false],
  d: [false, false, false, false, true, false, false, false, false, false],
  e: [false, false, false, false, false, false, false, false, false, false],
  f: [false, false, false, false, false, false, true, true, true, false],
  g: [false, false, false, false, false, false, false, false, false, false],
  h: [false, false, false, false, false, false, false, false, false, false],
  i: [true, true, true, true, true, false, false, false, false, false],
  j: [false, false, false, false, false, false, false, false, false, false]
}, {
  a: [false, false, false, false, false, false, false, false, false, false],
  b: [true, true, true, true, true, false, false, false, false, false],
  c: [false, false, false, false, true, true, true, true, false, false],
  d: [false, false, false, false, false, false, false, true, false, false],
  e: [false, false, false, false, false, false, false, true, false, false],
  f: [false, false, false, false, false, false, false, false, false, false],
  g: [true, false, false, false, false, false, false, false, false, false],
  h: [true, false, false, false, false, false, false, false, false, false],
  i: [true, false, false, false, false, true, true, true, false, false],
  j: [false, false, false, false, false, false, false, false, false, false]
}, {
  a: [true, false, false, false, false, false, false, false, false, false],
  b: [true, false, false, false, false, false, true, false, false, false],
  c: [false, false, false, false, true, false, true, false, false, false],
  d: [false, false, false, false, true, false, true, false, false, false],
  e: [false, false, false, false, true, false, false, false, false, false],
  f: [false, false, false, false, true, false, false, false, false, false],
  g: [false, false, false, false, false, false, false, false, true, false],
  h: [false, false, false, false, false, false, false, false, true, false],
  i: [false, false, false, false, false, false, false, false, true, false],
  j: [false, false, true, true, true, true, true, false, false, false]
},
{
  a: [false, false, false, false, false, false, false, true, true, true],
  b: [false, false, false, false, false, false, true, true, false, false],
  c: [false, false, false, false, false, false, false, false, false, false],
  d: [false, true, false, false, false, false, false, false, false, false],
  e: [false, true, false, false, false, false, false, false, false, false],
  f: [false, true, false, false, false, false, false, false, false, false],
  g: [false, true, false, false, false, false, false, false, true, false],
  h: [false, false, false, false, false, false, false, false, true, false],
  i: [false, false, false, false, false, false, false, false, true, false],
  j: [false, false, true, true, true, true, true, false, false, false]
},
{
  a: [false, false, false, false, false, false, true, true, true, true],
  b: [false, false, false, false, false, false, false, false, false, false],
  c: [false, true, false, false, false, false, false, false, false, false],
  d: [false, true, false, false, false, false, false, false, false, false],
  e: [false, true, false, false, false, false, false, false, false, false],
  f: [false, true, false, false, false, false, false, false, false, false],
  g: [false, true, false, false, false, false, false, false, true, false],
  h: [true, false, false, false, false, false, false, false, true, false],
  i: [true, false, false, false, false, false, false, false, true, false],
  j: [false, false, true, true, true, false, false, false, false, false]
},
{
  a: [true, false, false, false, false, false, false, false, false, true],
  b: [true, false, false, false, false, false, false, false, false, true],
  c: [true, false, false, false, false, false, false, false, false, true],
  d: [false, true, false, false, false, false, false, false, false, true],
  e: [false, true, false, false, false, false, false, false, false, true],
  f: [false, true, false, false, false, false, false, false, false, false],
  g: [false, false, false, true, true, true, true, false, false, false],
  h: [false, false, false, false, false, false, false, false, false, false],
  i: [false, false, false, false, false, false, false, false, false, false],
  j: [false, false, false, false, false, true, true, false, false, false]
},
{
  a: [false, false, false, false, false, false, false, false, false, false],
  b: [false, false, false, false, false, false, true, true, true, true],
  c: [false, true, false, false, false, false, false, false, false, false],
  d: [false, true, false, false, false, false, false, false, false, false],
  e: [false, true, true, true, true, true, true, false, false, false],
  f: [false, false, false, false, false, false, false, false, false, false],
  g: [false, false, false, false, false, false, false, false, false, false],
  h: [false, false, false, false, false, false, false, false, false, false],
  i: [true, false, false, true, true, true, false, false, false, false],
  j: [true, false, false, false, false, false, false, false, false, false]
}]
  
@cpu_board = @board.sample
  
# def cpu_ship_grid
#     puts '   1 2 3 4 5 6 7 8 9 10'

#     @cpu_board.each do |key, row|
#         string = ''
#         row.each do |v|
#             if v
#                 string += ' S'
#             else
#                 string += ' .'
#             end
#         end
    
#         puts key.to_s + ' ' + string
#     end
# end