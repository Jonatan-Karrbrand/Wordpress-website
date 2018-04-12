<?php get_header(); ?>

<div class="arkivTitel">
  <h1><?php wp_title(''); ?></h1>
</div>

<div class="artikelSida">
  <div class="artikel">
    <?php if (have_posts()) :
      while (have_posts()) : the_post(); ?>
        <div class="post">
          <?php if ( has_post_thumbnail() ) {
	           the_post_thumbnail(array(600,600));
           } ?>
          <h2><a href="<?php the_permalink();?>"><?php the_title(); ?></a></h2>
          <p class="postSmallText"><?php the_time("j-m-Y");?>
          <?php the_category(', ');?></p>
          <p><?php the_excerpt(); ?></p>
        </div>
      <?php endwhile;
    endif; ?>
  </div>
  <aside class="widget">
      <form id="searchform" class="searchform">
        <?php if ( !function_exists( 'dynamic_sidebar' ) || !dynamic_sidebar('widget1') ) ?>
      </form>
  </aside>
</div>
<?php the_posts_pagination(); ?>

<?php get_footer(); ?>
