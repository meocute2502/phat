<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Employeess;

class NhanvienController extends Controller
{
   public function getDanhSach(){
       	$nhanvien = Employeess::all();
        return view('admin.nhanvien.danhsach',['nhanvien'=>$nhanvien]);  
    }

    public function getXoa($id){
        $nhanvien = Employeess::find($id);
       $nhanvien->delete();
        return redirect('admin/nhanvien/danhsach')->with('thanhcong','Xóa thành công');
    }
}
