<?php get_header(); ?>

<section class="hemsidaIntro" style="background-image: url('<?php the_field("intro_bild"); ?>')">
  <div>
    <h1><?php the_field('intro_rubrik'); ?></h1>
    <p><?php the_field('intro_text'); ?></p>
  </div>
</section>

<div class="arkivTitel" style="margin-top:-70px;">
  <h2><?php the_field('caption1'); ?></h2>
</div>

<section class="flexBox">
  <div class="left">
    <h2 style="margin-left: 90px;"><?php the_field('hemsida_del1_rubrik'); ?></h2>
    <p><?php the_field('hemsida_del1_text'); ?></p>
  </div>
  <div class="right">
    <?php
      $image = get_field('hemsida_del1_bild');
      $size = 'del1_bild'; // (thumbnail, medium, large, full or custom size)
      if( $image ) {
        echo wp_get_attachment_image( $image, $size );
      }
    ?>
  </div>
</section>

<div id="mainbox-bg">
  <div id="mainbox">
    <div id="imgbox">
      <?php if( have_rows('slideshow') ): ?>
        <?php while ( have_rows('slideshow') ) : the_row(); ?>
          <img src="<?php the_sub_field('slideshow_bild'); ?>" alt="">
        <?php endwhile;
      endif; ?>
    </div>
  </div>
</div>

<?php get_footer(); ?>
