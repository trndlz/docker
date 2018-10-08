name = input('What is your Name? ')
print('Nice to meet you', name)

from pandas import read_csv
mydf = read_csv('mycsv.csv')
print(mydf.head())