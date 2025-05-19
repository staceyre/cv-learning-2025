2025-5-19
1.Pytorch 张量的基本操作:
1）创建张量
arange(),reshape(),shape,numel(),len(X)
x=torch.arange()
x=torch.arange(20,dtype=torch.float32)
x=torch.randn(20).reshape()
x=torch.zeros()
x=torch.zeros_like(y)
x=torch.tensor([[]])
2）张量的运算
x*y,x+y,x/y,x\*\*y
torch.exp(x)
连结：torch.cat((x,y),dim=0)
3）广播机制，注意满足的条件
->防止广播机制,keepdim=True
4）节省内存(id(X))
占用内存的方式：Y=X+Y
节省：Y+=X
Z=torch.zeros_like(Y)
Z[:]=X+Y
5）转化为其他对象
A=X.numpy() 2.数据预处理
1）创建 csv 文件
import os
os.makedirs(os.psth.join('..','data'),exist_ok=True)
data_file=os.path.join('..','data','house_tiny.csv')
with open(data_file,'w') as f:
f.write(', , ,\n')
2）读取 csv 文件
pd.read_csv(data_file)
3）处理缺失值(填补缺失值需要判断数值列)
inputs,outputs=data.iloc
inputs=pd.fillna(inputs.mean())
4）独热数值
inputs=pd.get_dummies(inputs,dummy_na=True)
5）转化为张量格式(注意 dtype 和 astype 的用法)
X=torch.tensor(inputs.to_numpy(dtype=float)) 3.线性代数基础
计算（Hadmard 积和向量）：
x*y,torch.dot(x,y)
，基本性质（创建副本，产生新内存,A.clone()）
1）求和降维操作,注意区分 axis=1 和 axis=0
x.sum(axis=1)
x.sum(axis=[0,1])
A.mean()
A.sum()/A.numel()
2）非降维求和
x.sum(axis=0,keepdims=True)
累计求和:A.cumsum(axis=1)
3）向量积
torch.mv()/torch.mm()
4）范数（L2，L1）,注意原理
2：torch.norm(u)(注意 u 这里必须要规定数值类型)
1：torch.abs(u).sum()
