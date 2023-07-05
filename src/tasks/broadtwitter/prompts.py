from typing import List

from ..utils_typing import Entity, dataclass


"""Entity definitions

The entity definitions are derived from the official ConLL2003 guidelines:
https://www.clips.uantwerpen.be/conll2003/ner/
Based on: Nancy Chinchor, Erica Brown, Lisa Ferro, Patty Robinson,
           "1999 Named Entity Task Definition". MITRE and SAIC, 1999.
"""


@dataclass
class Person(Entity):
    """{ner_person}"""

    span: str


@dataclass
class Organization(Entity):
    """{ner_organization}"""

    span: str


@dataclass
class Location(Entity):
    """{ner_location}"""

    span: str


@dataclass
class Miscellaneous(Entity):
    """{ner_miscellaneous}"""

    span: str


ENTITY_DEFINITIONS: List[Entity] = [
    Person,
    Organization,
    Location,
]



# __all__ = list(map(str, [*ENTITY_DEFINITIONS]))
