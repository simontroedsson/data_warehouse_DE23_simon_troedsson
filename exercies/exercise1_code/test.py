

with open(r'Ifood.csv', 'r') as file: 
  
    # Reading the content of the file 
    # using the read() function and storing 
    # them in a new variable 
    data = file.read() 
  
    # Searching and replacing the text 
    # using the replace() function 
    data = data.replace(';', ",") 
  
# Opening our text file in write only 
# mode to write the replaced content 
with open(r'Ifood.csv', 'w') as file: 
  
    # Writing the replaced data in our 
    # text file 
    file.write(data) 