function openOnModal(product,store){
  
  if ($('#product-modal-'+product).length){
    $('#product-modal-'+product).modal();

  } else {
    console.log('chamou');
    $.getJSON("/stores/"+store+"/products/"+product+".json", function(data){


    var html = '<div class="modal fade in" id="product-modal-'+data.id+'" tabindex="-1" aria-labelledby="mainModalLabel" aria-hidden="true"> \
                  <div class="modal-dialog"> \
                    <div class="modal-content"> \
                      <div class="modal-header"> \
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span></button> \
                        <h4 class="modal-title" id="mainModalLabel"> \
                          '+data.name+' \
                        </h4> \
                      </div> \
                      <div class="row"> \
                        <div class=" modal-body"> \
                          <div class="col-md-5"> \
                            <img src="'+data.picture+'" alt="" class="img" /> \
                        </div> \
                        <div class="col-md-7"> \
                          <h3>'+data.name+'</h3> \
                          <p> \
                            <strong>Código:</strong>'+data.code+' <br> <br> \
                            <strong>Preço:</strong> R$ '+data.price+' <br> <br> \
                            <strong>Descrição:</strong> '+data.description+' <br><br> \
                            <a href="/cart/add/'+data.cart+'" class="btn btn-success">Adicionar ao Carrinho</a> \
                          </p> \
                        </div> \
                      </div> \
                    </div> \
                  </div> \
                </div>';
    console.log("entrou");
    $('body').append($(html));
    $('#product-modal-'+product).modal();
    
    });
  }



};