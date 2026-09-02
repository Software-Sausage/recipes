import copy
import unittest

from catalog import active_names


class ActiveNamesTest(unittest.TestCase):
    def test_contract(self):
        rows = [
            {"name": "  Zoe ", "active": True},
            {"name": "ada", "active": True},
            {"name": "", "active": True},
            {"name": "Ada", "active": True},
            {"name": "Ignored", "active": False},
            {"name": "Truthy is not true", "active": 1},
            {"name": "   ", "active": True},
        ]
        original = copy.deepcopy(rows)

        self.assertEqual(active_names(rows), ["ada", "Ada", "Zoe"])
        self.assertEqual(rows, original)


if __name__ == "__main__":
    unittest.main()
