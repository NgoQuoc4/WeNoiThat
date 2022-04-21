package webnoithat1.Dto;

public class BillDetail {
	private int id;
	private int id_product;
	private int id_bills;
	private int quanty;
	private double total;
	private ProductsDto productsDto;

	public BillDetail() {
		super();
	}

	public BillDetail(int id, int id_product, int id_bills, int quanty, double total, ProductsDto productsDto) {
		super();
		this.id = id;
		this.id_product = id_product;
		this.id_bills = id_bills;
		this.quanty = quanty;
		this.total = total;
		this.productsDto = productsDto;
	}

	public ProductsDto getProductsDto() {
		return productsDto;
	}

	public void setProductsDto(ProductsDto productsDto) {
		this.productsDto = productsDto;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_product() {
		return id_product;
	}

	public int setId_product(int id_product) {
		return this.id_product = id_product;
	}

	public int getId_bills() {
		return id_bills;
	}

	public void setId_bills(int id_bills) {
		this.id_bills = id_bills;
	}

	public int getQuanty() {
		return quanty;
	}

	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}