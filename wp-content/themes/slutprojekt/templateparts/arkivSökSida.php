<div class="artikel">
  <?php if (have_posts()) :
    while (have_posts()) : the_post(); ?>
      <div class="post">
        <?php if ( has_post_thumbnail() ) {
           the_post_thumbnail(array(300,300));
         } ?>
        <h2><a href="<?php the_permalink();?>"><?php the_title(); ?></a></h2>
        <p id="postSmallText"><?php the_time("j-m-Y");?>
        <?php the_category(', ');?></p>
      </div>
    <?php endwhile;
  endif; ?>
</div>
<aside class="widget">
  <div >
    <form id="searchform" class="searchform">
      <?php if ( !function_exists( 'dynamic_sidebar' ) || !dynamic_sidebar('widget1') ) ?>
    </form>
  </div>
</aside>
