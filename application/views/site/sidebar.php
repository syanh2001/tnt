<?php 
	$catalog_id = isset($catalog_id)?$catalog_id:NULL;
	$price_from = isset($price_from)?$price_from:NULL;
	$price_to = isset($price_to)?$price_to:NULL;
 ?>
<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 clearpaddingl">
	<div class="panel panel-info" style="margin-bottom: 5px;">
		<div class="panel-heading">
		    <h3 class="panel-title">Tìm kiếm</h3>
		</div>
	    <div class="panel-body">
	  	    <form class="form-horizontal text-center" method="post" action="<?php echo base_url('product/search'); ?>">
				<div class="form-group form-group-sm">
					<label class="col-sm-5 clearpaddingl control-label" for="formGroupInputSmall">Danh mục</label>
					<div class="col-sm-7" style="padding-left: 0px">
				    	<select class="form-control" name="catalog_id">
				    		<?php foreach ($catalog as $value) { ?>
							  	<option value="<?php echo $value->id; ?>" style='font-weight: bold' <?php if($value->id==$catalog_id) echo 'selected'; ?>><?php echo $value->name; ?></option>
							  		<?php foreach ($value->sub as $val) { ?>
								  	<option value="<?php echo $val->id; ?>" <?php if($val->id==$catalog_id) echo 'selected'; ?>>&nbsp;&nbsp;&nbsp;<?php echo $val->name; ?></option>
								  <?php } ?>
								 </div>
							  	<?php } ?>
						</select>
				    </div>
				</div>
				<div class="form-group form-group-sm">
					<label class="col-sm-5 control-label" for="formGroupInputSmall">Giá từ:</label>
					<div class="col-sm-7" style="padding-left: 0px">
				    	<select class="form-control" name="price_from">
				    	<?php for ($i=0; $i < 140000000; $i = $i + 100000) { ?>
				    		<option value="<?php echo $i ?>" <?php if($i==$price_from) echo 'selected'; ?>><?php echo number_format($i); ?> VNĐ</option>
				    	<?php } ?>
						</select>
				    </div>
				</div>
				<div class="form-group form-group-sm">
					<label class="col-sm-5 control-label" for="formGroupInputSmall">đến:</label>
					<div class="col-sm-7" style="padding-left: 0px">
				    	<select class="form-control" name="price_to">
				    	<?php for ($i=100000; $i < 150000000; $i = $i + 100000) { ?>
				    		<option value="<?php echo $i ?>" <?php if($i==$price_to) echo 'selected'; ?>><?php echo number_format($i); ?> VNĐ</option>
				    	<?php } ?>
						</select>
				    </div>
				</div>
				<button class="btn btn-info" type="submit" name='submit'>Tìm kiếm</button>
			</form>
	    </div>
	</div>
	<div class="panel panel-info">
	  <div class="panel-body" style="padding:0px">
	  	<div class="list-group">
	  	<?php foreach ($catalog as $value)
	  	{
	  		$name = covert_vi_to_en($value->name);
	  		$name = strtolower($name);
	  	?>
	  	<div class="list-group">
	  		<a href="<?php echo base_url($name.'-c'.$value->id); ?>" class="list-group-item active">
		    <?php echo $value->name; ?>
		  	</a>
		  <?php foreach ($value->sub as $val) { 
		  	$namesub = covert_vi_to_en($val->name);
	  		$namesub = strtolower($namesub);
	  		?>
		  	<a href="<?php echo base_url($namesub.'-c'.$val->id); ?>" class="list-group-item"><?php echo $val->name; ?></a>
		  <?php } ?>
		 </div>
	  	<?php } ?>
	    </div>
	  </div>
	</div>
	<div class="panel panel-info" style="margin-top:10px;margin-bottom:10px;">
	  <div class="panel-body" style="padding:0px;">
	  	<img style="width: 100%" src="data:image/png;base64,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" alt="">
		  
	  </div>
	</div>
</div>