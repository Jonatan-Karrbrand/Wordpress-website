<div class="footerThing">
  <?php if( have_rows('informations_falt', 9) ): ?>
    <i class="fas fa-clock fa-2x"></i>
    <h3>ÖPPETIDER</h3>
      <?php while ( have_rows('informations_falt', 9) ) : the_row(); ?>
        <p><?php the_sub_field('fran_dag'); ?> <?php the_sub_field('till_dag'); ?> <?php the_sub_field('fran_tid'); ?> - <?php the_sub_field('till_tid'); ?></p>
      <?php endwhile;
  endif; ?>
</div>

<div class="footerThing">
  <div class="line"></div>
  <?php
    if(get_field('telefon', 9))
      {
        echo '<i class="fas fa-phone fa-2x"></i> <h3>RING</h3><p>' . get_field('telefon', 9) . '</p>';
      }
  ?>
</div>

<div class="footerThing">
  <div class="line"></div>
  <?php
    if(get_field('adress', 9))
      {
        echo '<i class="fas fa-map-marker fa-2x"></i> <h3>HITTA OSS</h3><p>' . get_field('adress', 9) . '</p>';
      }
  ?>
</div>

<div class="footerThing">
  <div class="line"></div>
  <?php
    if(get_field('e-mail', 9))
      {
        echo '<i class="fas fa-envelope fa-2x"></i> <h3>MAIL</h3><p>' . get_field('e-mail', 9) . '</p>';
      }
  ?>
</div>
