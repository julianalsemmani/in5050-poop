#ifndef C63_DSP_H_
#define C63_DSP_H_

#include <inttypes.h>

void sad_block_8x8(uint8_t *block1, uint8_t *block2, int stride, int *result);

#endif  /* C63_DSP_H_ */
