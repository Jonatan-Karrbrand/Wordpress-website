<?php

// check if the repeater field has rows of data
if( have_rows('4_kolumner') ):

// loop through the rows of data
  while ( have_rows('4_kolumner') ) : the_row(); ?>

        <div class="kolumner4">
          <?php
          $image = get_sub_field('4_kolumner_bild');
          $size = 'face'; // (thumbnail, medium, large, full or custom size)
          if( $image ) {
            echo wp_get_attachment_image( $image, $size );
          }
          ?>
          <h2><?php the_sub_field('4_kolumner_rubrik'); ?></h2>
          <p><?php the_sub_field('4_kolumner_text'); ?></p>
        </div>
  <?php endwhile;

else :

  // no rows found

endif;

?>
