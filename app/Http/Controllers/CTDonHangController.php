<?php

namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
use App\BillDetail;
use App\Bill;
use App\Product;

class CTDonHangController extends Controller
{
   public function getDanhSach(){
       	$ctdonhang = BillDetail::all();
        $result = [];
        foreach ($ctdonhang as $val) {
          $productResult = Product::where('id',$val->id_product)->first();
          $result_item = [
            "id"         => $val->id,
            "id_product" => $val->id_product,
            "name"       => $productResult->name,
            "quantity"   => $val->quantity,
            "unit_price" => $val->unit_price,
          ];
          array_push($result, $result_item);
        }
        return view('admin.chitietdonhang.danhsach',['ctdonhang'=>$result]);  
    }
	
	/*public function getSua($id){
       $ctdonhang = BillDetail::find($id);
       return view('admin.chitietdonhang.sua',['chitietdonhang'=>$ctdonhang]);
    }
    public function postSua(Request $req,$id){
        $donhang = Bill::find($id);
        $donhang->order_status = $req->order_status;
        $donhang->save();
        return redirect()->back()->with('thanhcong','Sửa thành công');

    }
	*/
    public function getXoa($id){
       $ctdonhang = BillDetail::find($id);
	   $ctdonhang->delete();
        return redirect('admin/chitietdonhang/danhsach')->with('thanhcong','Xóa thành công');
    }
}
