import requests

url = "https://apis.roblox.com/toolbox-service/v2/assets:search"

params = {
    "searchCategoryType": "Decal",
    "query": "KenDmugiwara01"
}

response = requests.get(url, params=params, timeout=15)

print("URL:", response.url)
print("HTTP:", response.status_code)

if response.status_code == 200:
    data = response.json()

    print("\n=== HASIL PENCARIAN ===\n")

    assets = data.get("creatorStoreAssets", [])

    for item in assets:
        asset = item.get("asset", {})
        creator = item.get("creator", {})

        name = asset.get("name", "Unknown")
        creator_name = creator.get("name", "Unknown")
        asset_id = asset.get("id", "Unknown")

        print(f"Name: {name}")
        print(f"Creator: {creator_name}")
        print(f"ID: {asset_id}")
        print()
else:
    print("Request gagal.")
    print(response.text)
