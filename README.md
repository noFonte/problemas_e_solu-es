# problemas_e_solu-es
programa para registrar essa  experiência. Ele armazena textos descritivos a respeito do problema e  respectiva solução, permitindo pesquisa por palavra chave.


# Como conectar o Windows com github
    - https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
    - https://ryan.dev.br/2023-04-17-github-ssh-pt-br/

    ssh-keygen -t ed25519 -C "your_email@example.com"

# start the ssh-agent in the background
start-ssh-agent -s


#adicionar chave ao agent
ssh-add c:/Users/YOU/.ssh/id_ed25519

#start-ssh-agent.cmd
Get-Service ssh-agent | Set-Service -StartupType Automatic -PassThru | Start-Service
start-ssh-agent.cmd
ssh -i C:\Users\chastie/.ssh\id_ed25519_git_demo -T git@gitlab.mycompany.com

or

ssh -i C:\Users\chastie/.ssh\id_ed25519_git_demo -T git@github.com

#**ssh -i C:\Users\edi/.ssh/id_ed25519/aulas2 -T git@github.com





