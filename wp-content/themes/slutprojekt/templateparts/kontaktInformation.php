<?php
  if(get_field('foretagsnamn', 9))
    {
      echo '<p><i class="fas fa-building"></i> ' . get_field('foretagsnamn', 9) . '</p>';
    }
?>
<?php
  if(get_field('telefon', 9))
    {
      echo '<p><i class="fas fa-phone"></i> ' . get_field('telefon', 9) . '</p>';
    }
?>
<?php
  if(get_field('adress', 9))
    {
      echo '<p><i class="fas fa-map-marker"></i> ' . get_field('adress', 9) . '</p>';
    }
?>
<?php
  if(get_field('e-mail', 9))
    {
      echo '<p><i class="fas fa-envelope"></i> ' . get_field('e-mail', 9) . '</p>';
    }
?>
