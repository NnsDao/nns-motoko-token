## ICP一键发币脚本


See [demo.sh](https://github.com/NnsDao/nns-motoko-token/blob/master/demo.sh).

### 环境

+ DFINITY SDK v0.7.0
+ Vessel v0.4.1 (Optional)
+ macOS Big Sur  11.4


### 快速运行

1.打开Terminal，然后输入安装脚本：sudo sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)"

2.回车继续下一步，输入“y”

3.检测是否安装成功：dfx --version  输出“dfx 0.7.0”，即代表安装成功

4.如果你已经 安装过SDK，则跳过以上直接运行

5.sudo git clone https://github.com/NnsDao/nns-motoko-token.git

6.cd nns-motoko-token

7.sudo dfx ./demo.sh



8.浏览器打开 http://127.0.0.1:2333 即看到运行后的dApp

### Canisters注册:

* token canister
* token registry canister

### 参考

https://github.com/enzoh/motoko-token
https://github.com/flyq/motoko_token