<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title><?php wp_title('');?></title>
    <?php wp_head(); ?>
  </head>
    <body>
        <header>
          <nav>
              <li>
                <?php wp_nav_menu( array('theme_location' => 'main-menu')); ?>
              </li>
          </nav>
        </header>
