<?php get_header(); ?>

<section>
  <section class="intro" style="background-image: url('<?php the_field("bild"); ?>')">
  </section>

  <div class="bilTitel">
    <h2><?php the_title(); ?></h2>
  </div>

  <div class="flexBox">
    <div class="left">
      <?php
        $bil_pris = get_field('pris');
        $bil_pris = apply_filters('mitt_pris_filter' , $bil_pris);
      ?>
      <p><span class="bold">Pris </span><?php echo $bil_pris ?></p>
      <p><span class="bold">Årsmodell </span><?php the_field('arsmodell'); ?></p>
      <p><span class="bold">Miltal </span><?php the_field('miltal'); ?> Mil</p>
      <p><span class="bold">Växellåda </span><?php the_field('vaxellada'); ?></p>
      <p><span class="bold">Drivmedel </span><?php the_field('drivmedel'); ?></p>
      <p><span class="bold">Effekt </span><?php the_field('effekt'); ?> Hk</p>
      <p><span class="bold">Drift </span><?php the_field('drift'); ?></p>
      <div class="delaKnappar">
        <?php the_content(); ?>
      </div>
    </div>
    <div class="right">
      <p><?php the_field('beskrivning'); ?></p>
    </div>
  </div>

  <section class="flerBilder">
    <?php
      if(get_field('fler_bilder')) {
        echo '<h2>' . 'Fler bilder' . '</h2>';
      }
    ?>
    <?php if( have_rows('fler_bilder') ): ?>
      <?php while ( have_rows('fler_bilder') ) : the_row(); ?>
        <img src="<?php the_sub_field('fler_bilder_bild'); ?>" alt="">
      <?php endwhile;
    endif; ?>
  </section>
</section>

<?php get_footer(); ?>
