def reverse(seq):
  start = 0
  end = -1
  while start < len(seq)/2:
    temp = seq[end]
    seq[end] = seq[start]
    seq[start] = temp
    start += 1
    end -= 1

def main():
  try:
    text = open("hex_input.txt", "r")
    binary = open("testhex.txt", "wb")
    for line in text:
      if line[0] == "S":
        binary.write(bytearray(line[2:-1], "ascii"))
      elif line[0] == "B":
          hexString = line.split()[1]
          hexBin = bytearray.fromhex(hexString)
          binary.write(hexBin)
      else:
          hexString = line.split()[1]
          hexBin = bytearray.fromhex(hexString)
          reverse(hexBin)
          binary.write(hexBin)
  finally:
    text.close()
    binary.close()
    print("Done!")
main()
