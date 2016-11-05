export TF_VAR_do_token=$(cat $HOME/.config/doctl/config.yaml | grep access-token | awk '{print $2}')
export TF_VAR_ssh_fingerprint=$(ssh-keygen -E md5 -lf $HOME/.ssh/do.pub | awk '{print $2}' | awk '{print substr($1,5)}')
terraform remote config \
    -backend=local \
    -backend-config="path=$HOME/Google Drive/terraform/do-terraform/terraform.tfstate"
