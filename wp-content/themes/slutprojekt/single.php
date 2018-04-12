<?php get_header(); ?>

<div class="postPage">
  <?php if (have_posts()) : ?>
    <?php while (have_posts()) : the_post(); ?>
      <h1 style=" margin-left: 70px;"><?php the_title(); ?></h1>
      <div class="single">
        <p class="postSmallText"><?php the_time("j-m-Y");?>
        <?php the_category(', ');?></p>
        <?php the_content(); ?>
        <div class="aStil">
          <?php the_author_posts_link(); ?>
        </div>
      </div>
    <?php endwhile; ?>
    <?php else : ?>
      <p>Inga poster hittades.</p>
  <?php endif; ?>
</div>

<?php get_footer(); ?>
