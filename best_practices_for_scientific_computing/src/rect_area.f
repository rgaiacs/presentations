      subroutine rect_area(x1, x2, y1, y2, a)
          ! This function attribute to `a` the area of the rectangle
          ! with opposite vertices in (x1, x2) and (y1, y2).
          a = abs((x1 - y1) * (x2 - y2))
      end subroutine rect_area
