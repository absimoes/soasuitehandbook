<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:tns="saibot.airport/finance/aircraftmovement"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:ns0="saibot.airport/services/aircraftmovement"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions"
                xmlns:reference="saibot.airport/data/reference" xmlns:common="saibot.airport/data/common"
                xmlns:WL5G3N2="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns1="java:saibot.airport.finance"
                xmlns:WL5G3N0="http://schemas.xmlsoap.org/wsdl/">
    <oracle-xsl-mapper:schema>
        <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
        <oracle-xsl-mapper:mapSources>
            <oracle-xsl-mapper:source type="XSD">
                <oracle-xsl-mapper:schema location="../Schemas/AircraftMovementService.xsd"/>
                <oracle-xsl-mapper:rootElement name="reportAircraftMovementRequestMessage"
                                               namespace="saibot.airport/services/aircraftmovement"/>
            </oracle-xsl-mapper:source>
        </oracle-xsl-mapper:mapSources>
        <oracle-xsl-mapper:mapTargets>
            <oracle-xsl-mapper:target type="WSDL">
                <oracle-xsl-mapper:schema location="../WSDLs/FinanceAircraftMovementsReporterEJBTransport.wsdl"/>
                <oracle-xsl-mapper:rootElement name="reportAircraftMovement"
                                               namespace="saibot.airport/finance/aircraftmovement"/>
            </oracle-xsl-mapper:target>
        </oracle-xsl-mapper:mapTargets>
        <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED AUG 06 13:57:44 CEST 2014].-->
    </oracle-xsl-mapper:schema>
    <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
    <xsl:template match="/">
        <tns:reportAircraftMovement>
            <tns:aircraftMovementReport>
                <ns1:AirportIataCode>
                    <xsl:value-of select="/ns0:reportAircraftMovementRequestMessage/ns0:ConnectingAirport"/>
                </ns1:AirportIataCode>
                <ns1:CarrierIataCode>
                    <xsl:value-of select="/ns0:reportAircraftMovementRequestMessage/ns0:Carrier"/>
                </ns1:CarrierIataCode>
                <ns1:Flightnumber>
                    <xsl:value-of select="/ns0:reportAircraftMovementRequestMessage/ns0:FlightNumber"/>
                </ns1:Flightnumber>
                <ns1:ArrivalOrDeparture>
                    <xsl:value-of select="/ns0:reportAircraftMovementRequestMessage/ns0:ArrivalOrDeparture"/>
                </ns1:ArrivalOrDeparture>
                <ns1:MovementTimestamp>
                    <xsl:value-of select="/ns0:reportAircraftMovementRequestMessage/ns0:ActionDateAndTime"/>
                </ns1:MovementTimestamp>
                <ns1:AircraftIataEquipmentCode>
                    <xsl:value-of select="/ns0:reportAircraftMovementRequestMessage/ns0:AircraftModel"/>
                </ns1:AircraftIataEquipmentCode>
                <ns1:NumberOfPassengers>
                    <xsl:value-of select="/ns0:reportAircraftMovementRequestMessage/ns0:NumberOfPassengers"/>
                </ns1:NumberOfPassengers>
            </tns:aircraftMovementReport>
        </tns:reportAircraftMovement>
    </xsl:template>
</xsl:stylesheet>
