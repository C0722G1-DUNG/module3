package service.service.impl;

import modal.service.Facility;
import repository.service.IFacilityRepository;
import repository.service.impl.FacilityRepositoy;
import service.service.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    private IFacilityRepository facilityRepository = new FacilityRepositoy();
    @Override
    public List<Facility> findAll() {
        return facilityRepository.findAll();
    }
}
