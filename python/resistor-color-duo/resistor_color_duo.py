"""Two-coloured resistor value
"""


def value(colors):
    return 10 * color_value.index(colors[0]) + color_value.index(colors[1])


color_value = ["black", "brown", "red", "orange",
               "yellow", "green", "blue", "violet", "grey", "white"]
