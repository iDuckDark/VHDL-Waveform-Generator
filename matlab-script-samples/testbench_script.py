#testbench values from csv script
def main():
    csvfile=input("csvfile:")
    string = ""
    with open(csvfile) as f:
            content = f.readlines()
            content = [x.strip() for x in content]
            for i in range(0,100):
                  print('("00","00","00",'+ str(content[i])+'),')      
    
main()
