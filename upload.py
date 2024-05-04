import pandas as pd
import mysql.connector as c

# Connect to the MySQL database
cnx = c.connect(host="localhost", user="root",
                passwd="", database="no_dues")

# Load Excel file into a Pandas data frame
df = pd.read_excel('C:/xampp/htdocs/No-Dues-Management-System-main/No_dues.xlsx')

# Insert dataframe data into MySQL table
cursor = cnx.cursor()
for row in df.itertuples():
    sql="INSERT INTO users (Name, reg_no, mobile, mail, section, dept) VALUES ('{}', {}, {}, '{}', '{}', '{}');".format(row.Name, row.reg, row.mobile, row.mail, row.section, row.dept)
    cursor.execute(sql)
    
cnx.commit()

# Close the database connection
cnx.close()


