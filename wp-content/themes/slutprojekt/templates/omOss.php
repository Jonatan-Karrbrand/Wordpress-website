<?php /*template name: Om oss*/ get_header(); ?>

<div class="arkivTitel">
  <h1><?php wp_title(''); ?></h1>
</div>

<section class="flexBox">
  <div class="left">
    <?php
      $image = get_field('omoss_bild');
      $size = 'del1_bild'; // (thumbnail, medium, large, full or custom size)
      if( $image ) {
        echo wp_get_attachment_image( $image, $size );
      }
    ?>
  </div>
  <div class="right">
    <h2 style="margin-left: 90px;"><?php the_field('omoss_rubrik'); ?></h2>
    <p><?php the_field('omoss_text'); ?></p>
  </div>
</section>

<section>
  <div class="kolumner">
    <?php get_template_part('templateparts/4_kolumner')?>
  </div>
</section>

<?php get_footer(); ?>
