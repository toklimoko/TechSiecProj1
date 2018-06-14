import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


import java.util.List;

@WebServlet("/product")
public class Controler extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String [] p = new String[8];
        String[] l = {"produkt1", "produkt2", "produkt3", "produkt4", "cena1", "cena2", "cena3", "cena4"};

        for (int i = 0; i < p.length; i++){
            p[i] = request.getParameter(l[i]);
        }

        List<Produkt> zakupy = new ArrayList<>();

        for (int i = 0; i < p.length / 2; i++) {
            if(!p[i].equals("") && !p[i + 4].equals("")) {
                Produkt pr = new Produkt(p[i], p[i+4]);
                zakupy.add(pr);
            }
        }

        if (zakupy.isEmpty()){
            request.getRequestDispatcher("empty.jsp").forward(request, response);
        } else {

            Policz policz = new Policz();

            double srednia = policz.srednia(zakupy);
            double suma = policz.suma(zakupy);

            request.setAttribute("ceny", Produkt.rachunek(zakupy));
            request.setAttribute("produkty", Produkt.lista(zakupy));
            request.setAttribute("suma", suma);
            request.setAttribute("srednia", srednia);
            request.getRequestDispatcher("summary.jsp").forward(request, response);

        }

    }

}
