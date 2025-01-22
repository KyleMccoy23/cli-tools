import json

def dl_cleaner(dirs: dict) -> None:
        
    import shutil
    import os

    source_path = dirs['download-folder']
    dest_path = dirs['save-folder']
        
    if os.scandir(source_path) is None:
        print('source is empty')
        return
    count = 0
    for i in os.scandir(source_path):
        if ".exe" in i.name or ".msi" in i.name:
            shutil.move(i.path, f'{dest_path}\\Applications')
        elif ".pdf" in i.name:
            shutil.move(i.path, f'{dest_path}\\pdf')
        elif ".docx" in i.name:
            shutil.move(i.path, f'{dest_path}\\documents')
        elif '.zip' in i.name:
            shutil.move(i.path, f'{dest_path}\\archives')
        elif '.png' in i.name or '.webp' in i.name or '.jpg' in i.name or '.jpeg' in i.name :
            shutil.move(i.path, f'{dest_path}\\images')
        else:
            shutil.move(i.path, f'{dest_path}\\Misc')
        count += 1
    print(f"Moved {count} files to the sorted dounloads folder\nPath: {dest_path}")
    
    
def main() -> None:
    with open("config.json", "r") as f:
        conf = json.load(f)

    print("""cli-tools
1. Download Cleaner
2.test2
3.test3
4.test4
""")
    _in = input(">> ")
    match _in:
        case "1":
            dl_cleaner(conf['download-cleaner-dirs'])
        case "2":
            print("test2")
        case "3":
            print("test3")
        case "4":
            print("test4")


if __name__ == "__main__":
    main()
