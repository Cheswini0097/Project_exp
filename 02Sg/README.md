The following are the ingress rules defined in the `main.tf` file:

1. **ingress_alb_https**
   - Type: ingress
   - From Port: 443
   - To Port: 443
   - Protocol: tcp
   - CIDR Blocks: 0.0.0.0/0
   - Security Group ID: module.ingress_alb_sg.id

2. **node_ingress_alb**
   - Type: ingress
   - From Port: 30000
   - To Port: 32767
   - Protocol: tcp
   - Source Security Group ID: module.ingress_alb_sg.id
   - Security Group ID: module.node_sg.id

3. **node_eks_control_plane**
   - Type: ingress
   - From Port: 0
   - To Port: 0
   - Protocol: -1
   - Source Security Group ID: module.eks_control_plane_sg.id
   - Security Group ID: module.node_sg.id

4. **eks_control_plane_node**
   - Type: ingress
   - From Port: 0
   - To Port: 0
   - Protocol: -1
   - Source Security Group ID: module.node_sg.id
   - Security Group ID: module.eks_control_plane_sg.id

5. **eks_control_plane_bastion**
   - Type: ingress
   - From Port: 443
   - To Port: 443
   - Protocol: tcp
   - Source Security Group ID: module.bastion_sg.id
   - Security Group ID: module.eks_control_plane_sg.id

6. **node_vpc**
   - Type: ingress
   - From Port: 0
   - To Port: 0
   - Protocol: -1
   - CIDR Blocks: 10.0.0.0/16
   - Security Group ID: module.node_sg.id

7. **node_bastion**
   - Type: ingress
   - From Port: 22
   - To Port: 22
   - Protocol: tcp
   - Source Security Group ID: module.bastion_sg.id
   - Security Group ID: module.node_sg.id

8. **mysql_bastion**
   - Type: ingress
   - From Port: 22
   - To Port: 22
   - Protocol: tcp
   - Source Security Group ID: module.bastion_sg.id
   - Security Group ID: module.mysql_sg.id

9. **bastion_public**
   - Type: ingress
   - From Port: 22
   - To Port: 22
   - Protocol: tcp
   - CIDR Blocks: 0.0.0.0/0
   - Security Group ID: module.bastion_sg.id