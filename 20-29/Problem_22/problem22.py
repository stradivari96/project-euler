from pathlib import Path

here = Path(__file__).resolve().parent

alphabetical_position = {
    char: i
    for i, char in enumerate('ABCDEFGHIJKLMNOPQRSTUVWXYZ', start=1)
}


def main():
    with open(here / 'p022_names.txt') as f:
        data = f.read()
    data = data.split(',')
    data = [n.replace('"', '') for n in data]
    data.sort()
    data = [
        i * sum(alphabetical_position[c] for c in name)
        for i, name in enumerate(data, 1)
    ]
    print(sum(data))


if __name__ == '__main__':
    main()
