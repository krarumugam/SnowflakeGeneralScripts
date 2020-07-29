import snowfalke.connector as sf


#https://qi08433.ap-south-1.aws.snowflakecomputing.com

#get the context object
ctx = sf.connect(
	user='aruaccadmin',
	password='***********',
	account='qi08433.ap-south-1',
)
print("Got the context object")

#get the cursor object
cs = ctx.cursor()
print("Got the cursor object")

#run the query
try:
	cs.execute("select current_version(), current_user(), current_region()")
	one_row = cs.fetchone()
	print ("*********************")
	print (one_row)
finally:
	cs.close()
	