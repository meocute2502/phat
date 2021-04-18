<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employeess extends Model
{
    protected $table ="Employeess";
    public function bills(){
    	return $this->hasMany('App/Bill','id_employee','id');
 
}
