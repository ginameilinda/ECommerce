<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Image;
use Auth;

class OrderController extends Controller
{
    /**
     * Create new controller instance
     *
     * @return void
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $order=Order::where('user_id', '=', Auth::user()->id)->get();
        return view('admin.orders.index', compact('order'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cart = session()->get('cart');
        if ($cart) {
            return view('admin.orders.create');
        }else {
            return redirect('/')->with('success', 'Anda harus belanja terlebih dahulu.');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate(request(), [
            'shipping_address' => 'required',
            'city' => 'required',
            'rt' => 'required',
            'rw' => 'required',
            'no_hp' => 'required',
            'zip_code' => 'required',
        ]);

        //total bayar
        $cart = session()->get('cart');
        $total_price = 0;
        foreach ($cart as $id => $product) {
            $total_price += $product['price'] * $product['quantity'];
        }

        $order = new Order();
        $order->user_id = Auth::user()->id;
        $order->status = 'PENDING';
        $order->shipping_address = $request->post('shipping_address');
        $order->city = $request->post('city');
        $order->rt = $request->post('rt');
        $order->rw = $request->post('rw');
        $order->provinsi = $request->post('provinsi');
        $order->no_hp = $request->post('no_hp');
        $order->zip_code = $request->post('zip_code');
        $order->total_price = $total_price;
        $order->save();

        foreach ($cart as $id => $product) {
            $orderItem = new OrderItem();
            $orderItem->order_id = $order->id;
            $orderItem->product_id = $id;
            $orderItem->quantity = $product['quantity'];
            $orderItem->price = $product['price'];
            $orderItem->save();
        }

        session()->forget('cart');

        return redirect('admin/orders/' . $order->id)->with('success', 'Order berhasil disimpan.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $order = Order::find($id);
        if ($order) {
            return view('admin.orders.show', compact('order'));
        } else {
            return redirect('admin/orders')->with('error', 'Order tidak ditemukan');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $order = Order::find($id);
        $order->delete();

        return redirect('admin/orders')->with('success', 'Product success deleted.');
    }
}
