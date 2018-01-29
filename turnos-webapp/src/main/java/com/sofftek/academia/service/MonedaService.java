package com.sofftek.academia.service;

import javax.jws.WebService;

@WebService(targetNamespace="http://service.academia.sofftek.com/")
public interface MonedaService {


	public double pesoADolar (int num);

	public double pesoAEuro (int num);
}
