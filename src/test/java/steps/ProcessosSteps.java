package steps;

import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Quando;
import definition.Processo;
import org.junit.Assert;
import support.RESTSupport;

public class ProcessosSteps {

    @Dado("^que o usuario gostaria de salvar um processo$")
    public void queOUsuarioGostariaDeSalvarUmProcesso() {
        Processo.limparCampos();

    }

    @E("^o o usuário informar o \"([^\"]*)\" com o valor igual a \"([^\"]*)\"$")
    public void oOUsuarioInformarOComOValorIgualA(String campo, String valor)  {
        Processo.preencherCampo(campo, valor);
    }

    @Quando("^o usuário clicar no botão salvar$")
    public void oUsuarioClicarNoBotaoSalvar() {
        RESTSupport.executePost(Processo.GetEndPoint(), Processo.getCampos());
        Processo.setId(RESTSupport.key("id").toString());

    }

    @Quando("^o usuário clicar no botão mostrar$")
    public void oUsuarioClicarNoBotaoMostrar() {
        RESTSupport.executeGet(Processo.GetEndPoint()+'/'+Processo.getId());
    }

    @E("^o usuário visualiza o campo \"([^\"]*)\" com o valor \"([^\"]*)\"$")
    public void oUsuárioVisualizaOCampoComOValor(String campo, String valor) {
        String atual = Processo.recuperarCampo(campo);
        Assert.assertEquals(valor, atual);
    }

    @E("^alterar o campo \"([^\"]*)\" para o valor \"([^\"]*)\"$")
    public void alterarOCampoParaOValor(String campo, String valor) {
        Processo.preencherCampo(campo, valor);
    }

    @E("^o usuario clicar em editar$")
    public void oUsuarioClicarEmEditar() {
        RESTSupport.executePut(Processo.GetEndPoint()+'/'+Processo.getId(), Processo.getCampos());
    }

    @E("^o usuario clicar em Excluir$")
    public void oUsuarioClicarEmExcluir() {
        RESTSupport.executeDelete(Processo.GetEndPoint()+'/'+ Processo.getId());
    }
}
