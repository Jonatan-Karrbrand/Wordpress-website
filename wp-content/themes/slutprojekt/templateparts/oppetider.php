<?php if( have_rows('informations_falt', 9) ): ?>
<i class="far fa-clock" style="font-size: 2rem; padding-bottom: 10px;"></i>
  <?php while ( have_rows('informations_falt', 9) ) : the_row(); ?>

    <p><?php the_sub_field('fran_dag'); ?> <?php the_sub_field('till_dag'); ?> <?php the_sub_field('fran_tid'); ?> - <?php the_sub_field('till_tid'); ?></p>

  <?php endwhile;
else :
  // no rows found
endif; ?>
