from typing import Callable


class B:
    def __init__(self) -> None:
        pass


class A:
    def __init__(self, data: str, b: B, f: object = lambda x, y: x * y) -> None:     # noqa: E501
        self.data: str = data
        self.b: B = b
        self.f: object = f


class C:
    def __init__(self, inteiros: list[int], object_a: A, g: Callable[[A], str] = lambda a: a.data) -> None:     # noqa: E501
        self.inteiros: list[int] = inteiros
        self.umA: A = object_a
        self.g: Callable[[A], str] = g
