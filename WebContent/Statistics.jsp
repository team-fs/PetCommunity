<jsp:include page="template-top.jsp"/>

  <link rel="stylesheet" href="../../assets/css/keen-dashboards.css">

  <div class="container-fluid">
    <div class="row">

      <div class="col-sm-8">
        <div class="chart-wrapper">
          <div class="chart-title">
            Trends of Topics (Past 3 days)
          </div>
          <div class="chart-stage">
            <div id="chart-01"></div>
          </div>
          <div class="chart-notes">
            Sample data.
          </div>
        </div>
      </div>

      <div class="col-sm-4">
        <div class="chart-wrapper">
          <div class="chart-title">
            Pageviews by browser (past 5 days)
          </div>
          <div class="chart-stage">
            <div id="chart-02"></div>
          </div>
          <div class="chart-notes">
            Notes go down here
          </div>
        </div>
      </div>

    </div>


    <div class="row">

      <div class="col-sm-4">
        <div class="chart-wrapper">
          <div class="chart-title">
            Impressions by advertiser
          </div>
          <div class="chart-stage">
            <div id="chart-03"></div>
          </div>
          <div class="chart-notes">
            Notes go down here
          </div>
        </div>
      </div>

      <div class="col-sm-4">
        <div class="chart-wrapper">
          <div class="chart-title">
            Impressions by device
          </div>
          <div class="chart-stage">
            <div id="chart-04"></div>
          </div>
          <div class="chart-notes">
            Notes go down here
          </div>
        </div>
      </div>

      <div class="col-sm-4">
        <div class="chart-wrapper">
          <div class="chart-title">
            Impressions by country
          </div>
          <div class="chart-stage">
            <div id="chart-05"></div>
          </div>
          <div class="chart-notes">
            Notes go down here
          </div>
        </div>
      </div>

    </div>

    <div class="row">
      <div class="col-sm-3">
        <div class="chart-wrapper">
          <img data-src="holder.js/100%x150/white">
        </div>
      </div>
      <div class="col-sm-3">
        <div class="chart-wrapper">
          <img data-src="holder.js/100%x150/white">
        </div>
      </div>
      <div class="col-sm-3">
        <div class="chart-wrapper">
          <img data-src="holder.js/100%x150/white">
        </div>
      </div>
      <div class="col-sm-3">
        <div class="chart-wrapper">
          <img data-src="holder.js/100%x150/white">
        </div>
      </div>
    </div>

    <hr>

    <p class="small text-muted">Built with &#9829; by <a href="https://keen.io">Keen IO</a></p>

  </div>

  <script src="../../assets/lib/jquery/dist/jquery.min.js"></script>
  <script src="../../assets/lib/bootstrap/dist/js/bootstrap.min.js"></script>

  <script src="../../assets/lib/holderjs/holder.js"></script>
  <script>
    Holder.add_theme("white", { background:"#fff", foreground:"#a7a7a7", size:10 });
  </script>

  <script src="../../assets/lib/keen-js/dist/keen.min.js"></script>
  <script src="../../assets/js/meta.js"></script>
  <script src="keen.dashboard.js"></script>

<jsp:include page="template-bottom.jsp"/>
