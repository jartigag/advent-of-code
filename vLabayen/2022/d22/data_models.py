from typing import Tuple, Union, Literal, List, Iterable
from attrs import define
from enum import Enum
from itertools import product

Coordinate = Tuple[int, int]
Step = Union[int, Literal['R', 'L']]

class TileType(Enum):
	OPEN = '.'
	WALL = '#'

	@staticmethod
	def valid_type(c: str) -> bool:
		return c in TileType._value2member_map_

class Facing(Enum):
	RIGHT = 0
	DOWN  = 1
	LEFT  = 2
	UP    = 3

	def rotate_clockwise(self) -> 'Facing':
		return Facing((self.value + 1) % 4)
	
	def rotate_counterclockwise(self) -> 'Facing':
		return Facing((self.value - 1) % 4)

@define
class Tile:
	position: Coordinate
	type: TileType

	def __str__(self) -> str: return f'Tile(position={self.position}, type={self.type.name}'

@define
class Path:
	steps: List[Step]


FaceCoordinate = Tuple[int, int]

@define
class Face:
	position: FaceCoordinate
	side_size: int
	tiles: List[Tile]

	def __str__(self) -> str: return f'Face(position={self.position}, side_size={self.side_size})'

	@staticmethod
	def get_face_coordinate(position: Coordinate, side_size: int) -> FaceCoordinate:
		''' Get the face coordinate of the given tile's position '''
		x, y = position
		return (x - 1) // side_size, (y - 1) // side_size

	@staticmethod
	def get_tile_coordinates(position: FaceCoordinate, side_size: int) -> Iterable[Coordinate]:
		x, y = position
		x_start, y_start = x * side_size + 1, y * side_size + 1
		return ((x_start + x_incr, y_start + y_incr) for x_incr, y_incr in product(range(0, side_size, 1), range(0, side_size, 1)))
