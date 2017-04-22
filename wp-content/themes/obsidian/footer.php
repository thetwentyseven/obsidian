
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
        <p>The club is available for hire Sunday to Wednesday. Potential events include corporate parties &
          drink receptions, conferences & presentations, fashion shows, formal dinners and award ceremonies.</p>
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
      <p class="text-muted copyright">Copyright &#169; 2017 Obsidian. All Right Reserved.</p>
    </div>
    <div class="nav-pills navbar-right nav-social">
      <img src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/cc-badges-ppmcvdam.png" alt="Credit Card Badges">
    </div>
  </div>
</footer>

</body>
</html>
