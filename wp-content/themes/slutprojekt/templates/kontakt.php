<?php /*Template name: Kontakt  */ get_header(); ?>

<div class="arkivTitel">
  <h1><?php wp_title(''); ?></h1>
</div>

<section class="flexBox">
  <div class="left">
    <?php get_template_part('templateparts/oppetider'); ?>
    <h2>Information</h2>
    <?php get_template_part('templateparts/kontaktInformation'); ?>
  </div>
  <div class="right">
    <?php echo do_shortcode('[contact-form-7 id="85" title="Kontaktformulär 1"]') ?>
  </div>
</section>

<?php get_footer(); ?>
