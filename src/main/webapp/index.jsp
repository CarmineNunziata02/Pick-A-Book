<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="it">
    <jsp:include page="./header.jsp" flush="true"></jsp:include>
    <script src="./Script/index.js"></script>
    <script src="./Script/dynamicCode.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", dynamicIndex("<%=request.getContextPath()%>/IndexServlet?tipo=lastSaved"));
        document.addEventListener("DOMContentLoaded", dynamicIndex2("<%=request.getContextPath()%>/IndexServlet?tipo=bestSellers"));
    </script>
    <body>
        <jsp:include page="./nav.jsp" flush="true"></jsp:include>
        <main>
            <section class="banner">
                <div class="slider">
                    <div class="content" id="slide1">
                        <div class="textbox">
                            <h2>L'isola del tesoro</h2>
                            <p>Una mappa misteriosa, pirati e avventure in mare alla ricerca di un tesoro nascosto.<p>
                            <a href="ProdottoServlet?isbn=10000000000000092">Acquista ora</a>
                        </div>
                        <div class="imgbox">
                            <img src="./images/isola_del_tesoro.jpg" alt="" class="db">
                        </div>
                    </div>
                    <div class="content" id="slide2">
                        <div class="textbox">
                            <h2>Il diario di Anna Frank</h2>
                            <p>La testimonianza toccante di una ragazza ebrea nascosta.<p>
                            <a href="ProdottoServlet?isbn=10000000000000006"> Acquista ora</a>
                        </div>
                        <div class="imgbox">
                            <img src="./images/anna_frank.jpg" alt="" class="db">
                        </div>
                    </div>
                    <div class="content" id="slide3">
                        <div class="textbox">
                            <h2>La fabbrica di cioccolato</h2>
                            <p>Charlie visita la magica fabbrica del signor Wonka.<p>
                            <a href="ProdottoServlet?isbn=10000000000000045"> Acquista ora</a>
                        </div>
                        <div class="imgbox">
                            <img src="./images/fabbrica_ciocc.jpg" alt="" class="db">
                        </div>
                    </div>
                    <div class="sliderNav">
                        <a href="#slide1" onclick="scrollSenzaOffset(event)"></a>
                        <a href="#slide2" onclick="scrollSenzaOffset(event)"></a>
                        <a href="#slide3" onclick="scrollSenzaOffset(event)"></a>
                    </div>
                </div>
            </section>
            <section id="prodotti">
                <h2> Ultime Uscite </h2>
                <div id="schedeUltimeAggiunte" class="schedeProdotto">

                </div>
                <h2> Best Sellers </h2>
                <div id="schedeBestSeller" class="schedeProdotto">

                </div>
            </section>

        </main>
        <jsp:include page="./footer.jsp" flush="true"></jsp:include>
    </body>
</html>