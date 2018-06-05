import java.util.ArrayList;
import java.util.List;

public class Produkt {

    private String nazwa;
    private Double cena;

    public Produkt(String nazwa, String cena) {
        if (!(nazwa.isEmpty() || cena.isEmpty())) {
            this.nazwa = nazwa;
            this.cena = Double.valueOf(cena);
        }
    }

    public static void dodaj(List<Produkt> zakupy, String nazwa, String cena) {
        if (!(nazwa.isEmpty() || cena.isEmpty())) {
            zakupy.add(new Produkt(nazwa, cena));
        }
    }

    public static List<Double> rachunek(List<Produkt> zakupy) {
        List<Double> ceny = new ArrayList<>();
        for (Produkt p : zakupy) {
            ceny.add(p.getCena());
        }
        return ceny;
    }

    public static List<String> lista(List<Produkt> zakupy) {
        List<String> produkty = new ArrayList<>();
        for (Produkt p : zakupy) {
            produkty.add(p.getNazwa());
        }
        return produkty;
    }


    public String getNazwa() {
        return nazwa;
    }

    public Double getCena() {
        return cena;
    }

    @Override
    public String toString() {
        return nazwa + " " + cena;
    }
}
