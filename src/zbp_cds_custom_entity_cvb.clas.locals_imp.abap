CLASS lhc_ZCDS_CUSTOM_ENTITY_CVB DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zcds_custom_entity_cvb RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zcds_custom_entity_cvb.

    METHODS read FOR READ
      IMPORTING keys FOR READ zcds_custom_entity_cvb RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zcds_custom_entity_cvb.

ENDCLASS.

CLASS lhc_ZCDS_CUSTOM_ENTITY_CVB IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD read.
  DATA lt_pacientes TYPE TABLE OF ZCDS_CUSTOM_ENTITY_CVB.

    " Leer datos de la base de datos
    SELECT id_paciente, nombre_paciente, apellido_paciente,
           poblacion, provincia, telefono, email_paciente
    FROM zpacientes_cvb
    INTO CORRESPONDING FIELDS OF TABLE @lt_pacientes.


    " Pasar datos a la salida
    result = CORRESPONDING #( lt_pacientes ).
  ENDMETHOD.


  METHOD lock.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZCDS_CUSTOM_ENTITY_CVB DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZCDS_CUSTOM_ENTITY_CVB IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
