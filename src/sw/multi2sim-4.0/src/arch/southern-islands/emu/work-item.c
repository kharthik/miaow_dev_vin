/*
 *  Multi2Sim
 *  Copyright (C) 2012  Rafael Ubal (ubal@ece.neu.edu)
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include <assert.h>

#include <lib/mhandle/mhandle.h>
#include <lib/util/bit-map.h>
#include <lib/util/linked-list.h>
#include <lib/util/list.h>

#include "wavefront.h"
#include "work-item.h"



/*
 * Public Functions
 */

struct si_work_item_t *si_work_item_create()
{
	struct si_work_item_t *work_item;

	/* Initialize */
	work_item = xcalloc(1, sizeof(struct si_work_item_t));
	work_item->write_task_list = linked_list_create();
	work_item->lds_oqa = list_create();
	work_item->lds_oqb = list_create();

	/* Return */
	return work_item;
}


void si_work_item_free(struct si_work_item_t *work_item)
{
	/* Empty LDS output queues */
	while (list_count(work_item->lds_oqa))
		free(list_dequeue(work_item->lds_oqa));
	while (list_count(work_item->lds_oqb))
		free(list_dequeue(work_item->lds_oqb));
	list_free(work_item->lds_oqa);
	list_free(work_item->lds_oqb);
	linked_list_free(work_item->write_task_list);

	/* Free work_item */
	free(work_item);
}



void si_work_item_set_pred(struct si_work_item_t *work_item, int pred)
{
	struct si_wavefront_t *wavefront = work_item->wavefront;

	assert(work_item->id_in_wavefront >= 0 && work_item->id_in_wavefront < wavefront->work_item_count);
	bit_map_set(wavefront->pred, work_item->id_in_wavefront, 1, !!pred);
	wavefront->pred_mask_update = 1;
}


int si_work_item_get_pred(struct si_work_item_t *work_item)
{
	struct si_wavefront_t *wavefront = work_item->wavefront;

	assert(work_item->id_in_wavefront >= 0 && work_item->id_in_wavefront < wavefront->work_item_count);
	return bit_map_get(wavefront->pred, work_item->id_in_wavefront, 1);
}

