package com.zust.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.zust.dto.SimStation;
import com.zust.dto.Station;
import com.zust.entity.Tstation;

public interface StationServiceI {

	void createStation(Station station) throws IllegalAccessException, InvocationTargetException;

	List<Station> getAllZZZ(int pageNum) throws IllegalAccessException, InvocationTargetException;
	
	List<Station> entity2dto(List<Tstation> listOrigin) throws IllegalAccessException, InvocationTargetException;

	int getZZZPageNum();

	void Modify(Station station);

	Station getStationById(int id) throws IllegalAccessException, InvocationTargetException;
	
	Station entity2dto(Tstation t) throws IllegalAccessException, InvocationTargetException;
	
	List<SimStation> entity2dto2(List<Tstation> listOrigin) throws IllegalAccessException, InvocationTargetException;

	List<SimStation> getZZZName() throws IllegalAccessException, InvocationTargetException;
}
