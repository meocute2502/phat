<div id="header" style="background-color: #ccccff">
		<div class="header-top" style="background-color: #6666ff">
			<div class="container">
				<div class="pull-left auto-width-left">
					<ul class="top-menu menu-beta l-inline">
						<li><a href="{{route('lienhe')}}"><i class="fa fa-home"></i><b> Chào Mừng Bạn Đã Đến Với Shop Quần Áo Zag Heroez Miraculous</b></a></li>
						<li><a href="{{route('lienhe')}}"><i class="fa fa-phone"></i><b>Liên hệ: 0812-658-447</b></a></li>
					</ul>
				</div>
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown">
					<ul class="top-details menu-beta l-inline">	
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-caret-down" style="height: 50px"></i>
                    </a>
						@if(Auth::check())
						<li><a href="admin/theloai/danhsach"><b>Chào bạn {{Auth::user()->full_name}}</b></a></li>
						<ul class="dropdown-menu dropdown-user">
						<li><a href=""><b>    Thông tin cá nhân</b></a></li>
						<li><a href="{{route('logout')}}">   Đăng xuất</a></li></ul>
						@else
						<li><a href="./dang-ki"><b>Đăng ký</b></a></li>
						<li><a href="admin/dangnhap"><b>Đăng nhập</b></a></li>
						@endif
					</li>
				</ul>
				</ul>
				<div class="clearfix"></div>
			</div> <!-- .container -->
		</div> <!-- .header-top -->
		<div class="header-body">
			<div class="container beta-relative">
				<div class="pull-left">
					<a href="index" id="logoshop.jpg"><img src="source/image/slide/logo.jpg" width="150px" style="margin-bottom: 20px;" alt=""></a>
				</div>
				<div class="pull-right beta-components space-left ov">
					<div class="space10">&nbsp;</div>
					<div class="beta-comp">
						<form role="search" method="get" id="searchform" action="{{route('search')}}">
					        <input type="text" value="" name="key" id="s" placeholder="Nhập từ khóa..." />
					        <button class="fa fa-search" type="submit" id="searchsubmit"></button>
						</form>
					</div>

					<div class="beta-comp">
						
						<div class="cart">
							<div class="beta-select"><i class="fa fa-shopping-cart"></i> 
							Giỏ hàng(@if(Session::has('cart')){{Session('cart')->totalQty}}
							@else trống @endif)
							<i class="fa fa-chevron-down"></i></div>
							<div class="beta-dropdown cart-body">
								@if(Session::has('cart'))
								@foreach($product_cart as $product)
								<div class="cart-item">
									<a class="cart-item-delete" href="{{route('xoagioihang',$product['item']['id'])}}"><i class="fa
										fa-times"></i></a>
									<div class="media">
										<a class="pull-left" href="#"><img src="source/image/product/{{$product['item']['image']}}" alt=""></a>
										<div class="media-body">
											<span class="cart-item-title">{{$product['item']['name']}}</span>
											<span class="cart-item-amount">{{$product['qty']}}*<span>@if($product['item']['promotion_price']==0){{number_format($product['item']['unit_price'])}} @else {{number_format($product['item']['promotion_price'])}}@endif VND</span></span>
										</div>
									</div>
								</div>
								@endforeach
								<div class="cart-caption">
									<div class="cart-total text-right">Tổng tiền: <span 
									class="cart-total-value">@if(Session::has('cart')){{number_format($totalPrice)}}@else 0 @endif VND</span></div>
									<div class="clearfix"></div>

									<div class="center">
										<div class="space10">&nbsp;</div>
										<a href="{{route('dathang')}}" class="beta-btn primary text-center">Đặt hàng <i class="fa fa-chevron-right"></i></a>
									</div>
								</div>
							</div>
							@endif
						</div> <!-- .cart -->
						
					</div>
				</div>
				<div class="clearfix"></div>
			</div> <!-- .container -->
		</div> <!-- .header-body -->
		<div class="header-bottom" style="background-color: #6666ff">
			<div class="container">
				<a class="visible-xs beta-menu-toggle pull-right" href="#"><span class='beta-menu-toggle-text'>Menu</span> <i class="fa fa-bars"></i></a>
				<div class="visible-xs clearfix"></div>
				<nav class="main-menu">
					<ul class="l-inline ov">
						<li><a href="{{route('trang-chu')}}">Trang chủ</a></li>
						<li><a @foreach($loai_sp as $loai) href="{{route('loaisanpham',$loai->id)}} " @endforeach>Loại sản phẩm </a>
							<ul class="sub-menu">
								@foreach($loai_sp as $loai)
								<li><a href="{{route('loaisanpham',$loai->id)}}">{{$loai->name}}</a></li>
								@endforeach
							</ul>
						</li>
						<li><a href="{{route('gioithieu')}}">Tin tức</a></li>
						<li><a href="{{route('lienhe')}}">Liên hệ</a></li>
					</ul>
					<div class="clearfix"></div>
				</nav>
			</div> <!-- .container -->
		</div> <!-- .header-bottom -->
	</div> <!-- #header -->