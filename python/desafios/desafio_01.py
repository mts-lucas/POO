from typing import Union

# codigo retirado de outro repositorio pessoal
# criando classe produto e definindo tipos dos atributos


class Produto:
    def __init__(self, preco: Union[float, int], descricao: str, validade: str):     # noqa: E501
        self.preco: Union[float, int] = preco
        self.descricao: str = descricao
        self.validade: str = validade

# criando classe item


class Item:
    def __init__(self, produto: Produto, quantidade: int):
        self.quantidade: int = quantidade
        self.produto: Produto = produto
        self.total: float = self.calcular_total()

    def calcular_total(self):
        return self.produto.preco * self.quantidade


# classe vendas


class Venda:
    def __init__(self, data: str, itens: list[Item] = []):
        self.data: str = data
        self.itens: list[Item] = itens
        self.total: float = self.totalizar()

    # com loop for
    # def totalizar(self) -> float:
    #     soma: float = 0.0
    #     for item in self.itens:
    #         soma += item.total
    #     return soma

    def totalizar(self) -> float:
        return sum(map(lambda item: item.total, self.itens))

    def adicionar_item(self, item: Item):
        self.itens.append(item)
        self.total = self.totalizar()

    def exibir_total(self):
        print(f'Total da venda: R$ {round(self.total, 2)}')


# exemplo:

produto1: Produto = Produto(preco=12.0, descricao="Pirulito", validade="17/03/2024")     # noqa: E501
print(f'preco de produto1 = {produto1.preco}')
produto2: Produto = Produto(preco=5, descricao="Bala", validade="18/04/2024")     # noqa: E501
print(f'preco de produto2 = {produto2.preco}')


item1: Item = Item(produto=produto1, quantidade=2)
print(f'total do item1 = {item1.total}')

item2: Item = Item(produto=produto2, quantidade=3)
print(f'total do item2 = {item2.total}')

minhavenda: Venda = Venda(data="13/03/2023", itens=[item1, item2])
minhavenda.exibir_total()

item3: Item = Item(produto=produto2, quantidade=4)
print(f'total do item3 = {item3.total}')

minhavenda.adicionar_item(item3)
minhavenda.exibir_total()
