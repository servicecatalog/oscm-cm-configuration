package org.oscm.app.service;

import org.modelmapper.ModelMapper;
import org.modelmapper.PropertyMap;
import org.oscm.app.domain.ControllerOrganization;
import org.oscm.app.domain.enumeration.Controller;
import org.oscm.app.dto.ControllerDTO;
import org.oscm.app.dto.ControllerOrganizationDTO;
import org.oscm.app.repository.ControllerOrganizationRepository;
import org.oscm.app.service.intf.ControllerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class ControllerServiceImpl implements ControllerService {

    @Autowired
    private ControllerOrganizationRepository repository;

    @Autowired
    private ModelMapper mapper;

    @Override
    public List<ControllerDTO> getAvailableControllers() {
        List<Controller> controllers = Arrays.asList(Controller.values());
        List<ControllerDTO> mappedControllers = controllers.stream()
                                                           .map(controller -> mapper.map(controller, ControllerDTO.class))
                                                           .collect(Collectors.toList());
        return mappedControllers;
    }

    @Override
    public ControllerOrganizationDTO createControllerOrganization(ControllerOrganizationDTO dto) {

        ControllerOrganization organization = toControllerOrganization(dto);
        ControllerOrganization createdOrganization = repository.save(organization);

        return toControllerOrganizationDTO(createdOrganization);
    }

    @Override
    public List<ControllerOrganizationDTO> getAllControllerOrganizations() {
        List<ControllerOrganization> organizations = repository.findAll();
        List<ControllerOrganizationDTO> dtos = organizations.stream().map(c -> toControllerOrganizationDTO(c))
                                                                     .collect(Collectors.toList());
        return dtos;
    }

    @Override
    public List<ControllerOrganizationDTO> getControllerOrganizations(String controllerId) {
        Optional<Controller> controller = getControllerById(controllerId);
        List<ControllerOrganization> organizations = repository.findByController(controller.get());
        List<ControllerOrganizationDTO> dtos = organizations.stream().map(c -> toControllerOrganizationDTO(c))
                                                            .collect(Collectors.toList());
        return dtos;
    }

    private ControllerOrganization toControllerOrganization(ControllerOrganizationDTO dto){

        Optional<Controller> controller = getControllerById(dto.getControllerId());
        if(!controller.isPresent()){
            //TODO: exception when controller does not exist
        }

        ControllerOrganization organization = new ControllerOrganization();
        organization.setOrganizationId(dto.getOrganizationId());
        organization.setController(controller.get());

        return organization;
    }

    private ControllerOrganizationDTO toControllerOrganizationDTO(ControllerOrganization organization){

        ControllerOrganizationDTO dto = new ControllerOrganizationDTO();
        dto.setId(organization.getId());
        dto.setOrganizationId(organization.getOrganizationId());
        dto.setControllerId(organization.getController().getControllerId());

        return dto;
    }

    private Optional<Controller> getControllerById(String controllerId){
        Stream<Controller> controllers = Arrays.stream(Controller.values());
        Optional<Controller> controller = controllers.filter(c -> c.getControllerId().equals(controllerId)).findFirst();
        return controller;
    }
}
