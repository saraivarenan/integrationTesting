package definition;

import groovy.json.internal.LazyMap;
import support.RESTSupport;

public class Processo {

    private static LazyMap camposJson = new LazyMap();

    private static final String Url = "http://agapito-server.herokuapp.com/processos";

    private static int ProcessoId;

    private static String processoId;

    public static void preencherCampo(String campo, String valor) {
        camposJson.put(campo, valor);
    }

    public static void limparCampos() {
        camposJson.clear();
    }

    public static String GetEndPoint() {
        return Url;
    }

    public static LazyMap getCampos() {
        return camposJson;
    }

    public static void setId(String id) {
        processoId = id;
    }

    public static String getId() {
        return processoId;
    }

    public static String recuperarCampo(String campo) {
        return RESTSupport.key(campo).toString();
    }
}
