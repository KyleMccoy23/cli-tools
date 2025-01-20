import json


def main() -> None:
    with open("config.json", "r") as f:
        conf = json.load(f)
    print("""cli-tools
1.test
2.test2
3.test3
4.test4
""")
    _in = input(">> ")
    match _in:
        case "1":
            print("test")
        case "2":
            print("test2")
        case "3":
            print("test3")
        case "4":
            print("test4")


if __name__ == "__main__":
    main()
