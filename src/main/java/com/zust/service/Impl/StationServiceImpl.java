package com.zust.service.Impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zust.dao.StationDaoI;
import com.zust.dto.SimStation;
import com.zust.dto.Station;

import com.zust.entity.Tstation;
import com.zust.service.StationServiceI;
@Transactional
@Service
public class StationServiceImpl implements StationServiceI {
	@Autowired
	private StationDaoI stationDao;
	
	public void createStation(Station station) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		Tstation tstation = dto2entity(station);
		stationDao.save(tstation);
	}
	
	public Tstation dto2entity(Station station) throws IllegalAccessException, InvocationTargetException{
		Tstation tstation = new Tstation();
		BeanUtils.copyProperties(tstation, station);
		return tstation;	
	}

	public List<Station> getAllZZZ(int pageNum) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		String hql ="FROM Tstation";
		List<Tstation> list = stationDao.find(hql,pageNum,2);
		List<Station> stations = entity2dto(list);
		return stations;
	}
	public List<Station> entity2dto(List<Tstation> listOrigin) throws IllegalAccessException, InvocationTargetException{
		List<Station> listDestination= new ArrayList<Station>(); 
		 for (Object source: listOrigin ) {
			 Station target= new Station();
		        BeanUtils.copyProperties(target,source);
		        listDestination.add(target);
		     }
			return listDestination;
	}

	public Station entity2dto(Tstation t) throws IllegalAccessException, InvocationTargetException{
		Station s = new Station();
		BeanUtils.copyProperties(s, t);
		return s;
		
	}
	public int getZZZPageNum() {
		// TODO Auto-generated method stub
		String hql="select count(*) FROM Tstation";
		Long i = stationDao.count(hql);
		double tota = (double)i;
		double total = Math.ceil(tota/2); 
		int total2 =(int)(total); 
		return total2;
	}

	public void Modify(Station station){
		// TODO Auto-generated method stub
		Tstation tstation = stationDao.get(Tstation.class, station.getStationId());
		tstation.setAddress(station.getAddress());
		tstation.setIntro(station.getIntro());
		tstation.setName(station.getName());
		tstation.setPhone(station.getPhone());
		stationDao.update(tstation);
	}

	public Station getStationById(int id) throws IllegalAccessException, InvocationTargetException {
		// TODO Auto-generated method stub
		Tstation tstation = stationDao.get(Tstation.class, id);
		Station station = entity2dto(tstation);
		return station;
		
	}

	public List<Object[]> getZZZName(){
		// TODO Auto-generated method stub
		


		List<Object[]> list = stationDao.getZZZname();
//		System.out.println(list.size());
//		for(Object[] object : list){    
//            int id = Integer.parseInt(object[0].toString());    
//            String name = (String)object[1];            
//            System.out.println("id="+id+","+"name="+name);    
//
//        }  
		return list;
	}
}
