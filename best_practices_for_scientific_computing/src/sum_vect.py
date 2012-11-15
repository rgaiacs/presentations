def sum_vect(a, b):
    """
    This function return the sum of the vectors a and b.

        >>> a = [0, 0, 0]
        >>> b = [1, 1, 1]
        >>> sum_vect(a, b)
        [1, 1, 1]
        >>> b = ['a', 'b', 'c']
        >>> sum_vect(a, b)
        [98, 99, 100]
    """
    n = len(a)
    y = [0 for i in range(n)]
    for i in range(n):
        y[i] = a[i] + b[i]
    return y
