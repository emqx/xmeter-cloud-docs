# VPC 对等连接

::: warning
该功能在基础版中不可用
:::

VPC 对等连接是两个 VPC 之间的网络连接，通过此连接，使两个 VPC 中的实例可以彼此通信，就像它们在同一网络中一样。

## 注意事项

1. XMeter Cloud 只支持**同一区域**创建对等连接。
2. 对等连接与数据集成资源相互绑定，创建资源前请先创建对等连接。
3. 对等连接的具体创建，请联系我们的技术团队协助您一起完成。

## 查看对等连接

1. 点击`详情`可查看对等连接两端的 VPC 信息。

   ![vpc_list](../_assets/vpc_list.png)

2. 在对等连接详情对话框中，XMeter 端信息展示的是 XMeter Cloud 自身的 VPC 信息，资源端信息展示的是用户被测资源所在的 VPC 信息。

   ![vpc_details](../_assets/vpc_details.png)


## 测试关联对等连接

1. 场景配置中的基础配置下，通过指定发压区域来关联相应的对等连接。其中发压区域即是对等连接中 XMeter 端的 VPC 所属区域。

   ![vpc_stress_region](../_assets/vpc_stress_region.png)

2. 指定发压区域后，MQTT Broker 地址中可填入与该对等连接关联的被测资源内网 IP 地址。

   ![vpc_private_ip](../_assets/vpc_private_ip.png)

3. 测试成功提交后，可在`测试信息`标签页下的`运行信息`卡片中看到关联的发压区域信息。

   ![vpc_test](../_assets/vpc_test.png)