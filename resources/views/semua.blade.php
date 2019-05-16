@extends('layouts.app')
<style>
.card {
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 18px;
}

.card button {
  border: none;
  outline: 0;
  padding: 10px;
  color: white;
  background-color: #FF5733;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
</style>
@section('content')
<div class="container">
        <div class="row mt-4">
                <div class="col-md-4 offset-md-8">
                    <div class="form-group">
                    <select id="order_field" class="form-control">
                        <option disabled selected hidden>Sort By</option>
                        <option value="best_seller">Best Seller</option>
                        <option value="terbaik">Terbaik (Berdasarkan Rating)</option>
                        <option value="termurah">Termurah</option>
                        <option value="termahal">Termahal</option>
                        <option value="terbaru">Terbaru</option>
                    </select>
                    </div>
                </div>
            </div> 
    <div class="row">
        
@foreach($products as $idx=>$product)
    @if($idx == 0 || $idx % 4 == 0)
        <div class="row mt-4">
    @endif

    <div class="col">
        <a href="{{ route('products.show',$product->id) }}">
            <div class="card">

                <div class="text-center">
                    <?php $product=App\Models\Product::find($product->id) ?>
                    <image src="{{ asset('/images/'.$product->images()->get()[0]->image_src) }}" style="width: 100%; height: 300px;"></image>
                </div>

                <div class="card-body">
                    <h5 class="card-title">
                            <b>{{ $product->name }}</b>
                        </a>
                    </h5>
                    <hr>
                    <p class="price">
                        $ {{ $product->price }}
                    </p>

                    <div>
                        <a href="{{ route('carts.add', ['id' => $product['id']]) }}" class="btn btn-primary" style="width: 100%">Beli</a>
                    </div>
                    
                    <!-- <div class="beli">
                        <button>
                            <a href="{{ route('carts.add', ['id' => $product['id']]) }}"></a>Add to Cart
                    </div> -->
                    <!-- <a href="{{ url('show',$product->id) }}" class="btn btn-success">Detail</a> -->
                </div>
            </div>
        </a>
    </div>

    @if($idx > 0 && $idx % 4 == 3)
        </div>
    @endif
    @endforeach
</div>
<!-- Jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
      $('#order_field').change(function(){
        window.location.href='/public?order_by=' + $(this).val();
        $.ajax({
            type: 'GET',
            url: '/products',
            data: {
                order_by: $(this).val(),
            },
            dataType: 'json',
            success: function (data) {
                var products = '';
                $.each(data, function (idx, product) {
                    if (idx == 0 || idx % 4 == 0) {
                        products += '<div class="row mt-4">';
                    }

                    products += '<div class="col">' +
                    '<div class="card">' +
                    '<img src="/products/image/' + product.image_src + '" class="card-img-top" alt="...">' + 
                    '<div class="card-body">' +
                    '<h5 class="card-title">' +
                    '<a href="/products/' + product.id + '">' + product.name +
                    '</a>' +
                    '</h5>' +
                    '<p class="card-text">' +
                    product.price +
                    '</p>' +
                    '<a href="/carts/add/' + product.id + '" class="btn btn-primary">Beli</a>' + 
                    '</div>' +
                    '</div>' +
                    '</div>';

                    if (idx > 0 && idx % 4 == 3) {
                        products += '</div>';
                    }
                });

                $('#product-list').html(products);
            },
            error: function (data) {
                alert('Unable to handle request');
            }
        });
      });
  });
</script>
@endsection
