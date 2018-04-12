<?php get_header(); ?>

<div class="arkivTitel">
  <h1>Sök - <?php the_archive_title(); ?></h1>
</div>

<div class="artikelSida">
  <?php get_template_part('templateparts/arkivSökSida'); ?>
</div>
<?php the_posts_pagination(); ?>

<?php get_footer(); ?>
