import java.util.List;

public class Policz {

    public double suma(List<Produkt> zakupy){
        double wynik=0;
        for (Produkt p:zakupy) {
            wynik=wynik+p.getCena();
        }
        return wynik;
    }

    public double srednia(List<Produkt> zakupy){
        double wynik=suma(zakupy)/zakupy.size();
        return Math.round(wynik*100)/100.0;
    }
}
