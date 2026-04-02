print("Running script...")

# change this to False to simulate failure
success = True  

if not success:
    raise Exception("Script failed!")

print("Script completed successfully")