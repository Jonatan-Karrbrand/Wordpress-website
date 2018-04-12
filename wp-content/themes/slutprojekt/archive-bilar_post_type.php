<?php get_header(); ?>

<div class="arkivTitel">
  <h1><?php wp_title(''); ?></h1>
</div>

<div class="bilarArkiv">
  <?php if (have_posts()) :
    while (have_posts()) : the_post(); ?>
      <div class="bil">
        <a href="<?php the_permalink();?>">
          <div class="bilInfo">
            <?php the_title('<h3>','</h3>'); ?>
            <?php
              $bil_pris = get_field('pris');
              $bil_pris = apply_filters('mitt_pris_filter' , $bil_pris);
            ?>
            <p><span class="bold">Pris </span><?php echo $bil_pris ?></p>
            <p><span class="bold">Årsmodell </span><?php the_field('arsmodell'); ?></p>
            <p><span class="bold">Miltal </span><?php the_field('miltal'); ?> Mil</p>
            <p><span class="bold">Effekt </span><?php the_field('effekt'); ?> Hk</p>
          </div>
        </a>
        <?php
          $image = get_field('arkiv_bild');
          $size = 'arkiv';
          if($image){
            ?><a href="<?php the_permalink();?>"><?php
            echo wp_get_attachment_image($image, $size);
            ?></a><?php
          }
        ?>
      </div>
    <?php endwhile;
  endif; ?>
</div>
<?php get_footer(); ?>
