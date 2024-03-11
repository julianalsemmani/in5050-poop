#include <inttypes.h>
#include <math.h>
#include <stdlib.h>

#include "dsp.h"
#include "tables.h"

void sad_block_8x8(uint8_t *block1, uint8_t *block2, int stride, int *result)
{
  int u, v;

  *result = 0;

  for (v = 0; v < 8; ++v)
  {
    for (u = 0; u < 8; ++u)
    {
      *result += abs(block2[v*stride+u] - block1[v*stride+u]);
    }
  }
}
