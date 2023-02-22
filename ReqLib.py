import requests

# Prompt user for destination URL
url = input("Enter the destination URL: ")

# Prompt user to select HTTP method
http_method = input("Select HTTP Method (GET, POST, PUT, DELETE, HEAD, PATCH, OPTIONS): ")

# Print request about to be sent and confirm with user
print(f"\nSending {http_method} request to {url}")
confirmation = input("Do you want to proceed? (Y/N): ")
if confirmation.lower() != 'y':
    print("Request canceled")
else:
    
    # Send HTTP request and store response
    response = requests.request(http_method, url)
    
    # Print translated response code
    if response.status_code == 200:
        print("Success")
    elif response.status_code == 201:
        print("Resource created")
    elif response.status_code == 204:
        print("No content")
    elif response.status_code == 400:
        print("Bad request")
    elif response.status_code == 401:
        print("Unauthorized")
    elif response.status_code == 403:
        print("Forbidden")
    elif response.status_code == 404:
        print("Site not found")
    elif response.status_code == 500:
        print("Internal server error")

    # Print response headers
    print("\nResponse Headers:")
    for header, value in response.headers.items():
        print(f"{header}: {value}")