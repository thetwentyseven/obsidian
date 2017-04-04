
<?php wp_footer(); ?>

<footer class="main-footer">
  <div class="container main-footer-container">
    <div class="row">
      <div class="col-md-3">
        <h3>CONTACT US</h3>
        <table class="footer-info-table">
          <tr>
            <td><i class="fa fa-map-marker" aria-hidden="true"></i></td>
            <td>
              <p>10 George Street, New Town, EH10 5DT</p>
              <p>Edinburgh, Scotland</p>
            </td>
          </tr>
          <tr>
            <td><i class="fa fa-phone" aria-hidden="true"></i></td>
            <td>
              <p>+0131 678 564</p>
              <p>+0131 678 567</p>
            </td>
          </tr>
          <tr>
            <td><i class="fa fa-globe" aria-hidden="true"></i></td>
            <td>
              <p>club@theobsidian.co.uk</p>
              <p>media@theobsidian.co.uk</p>
            </td>
          </tr>
        </table>
      </div>
      <div class="col-md-3">
        <h3>OPENING TIME</h3>
        <p>Thursday: __8:00PM - 3:00AM</p>
        <p>Friday: ____6:00PM - 3:00AM</p>
        <p>Saturday: __6:00PM - 3:00AM</p>
        <p>Curabitur condimentum nunc scelerisque diam volutpat, in lacinia neque semper.</p>
      </div>
      <div class="col-md-3">
        <h3>TWITTER FEED</h3>
        <div id="twitter-fetcher"></div> 
      </div>
      <div class="col-md-3">
        <h3>NEWSLETTERS</h3>
        <?php dynamic_sidebar( 'footer_right_1' ); ?>
      </div>
    </div>
  </div>
</footer>

<footer class="second-footer">
  <div class="container second-footer-container">
    <div class="navbar-left">
      <p class="text-muted">Copyright &#169; 2017 Obsidian. All Right Reserved.</p>
    </div>
    <div class="nav-pills navbar-right nav-social">
      <ul class="inline">
        <li><a href="https://www.facebook.com/mediaobsidian/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
        <li><a href="https://twitter.com/MediaObsidian" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
        <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
        <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
      </ul>
    </div>
  </div>
</footer>

</body>
</html>
