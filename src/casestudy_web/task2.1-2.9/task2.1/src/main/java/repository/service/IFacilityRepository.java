package repository.service;

import modal.service.Facility;

import java.util.List;

public interface IFacilityRepository {
    List<Facility> findAll();
}
