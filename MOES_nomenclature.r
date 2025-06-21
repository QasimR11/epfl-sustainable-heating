library(reactable)

var1 <- c('T','B','LB','MB','TC','L','G','U','UT','UL','TL')
d1 <- c('Set of timesteps','Set of buildings','Set of low temperature buildings','Set of medium temperature buildings','Set of technologies','Set of layers (resources)','Set of grids','Set of utilities',' Set of utilities of a certain type (heating and/or electricity)','Set of utilities using a certain resource layer',' Set of temperature level')

Sets_df <- data.frame(
    Set = var1,
    Description = d1
)

reactable(Sets_df, columns = list(
    Set = colDef(minWidth =60),
    Description = colDef(minWidth = 250)
))

parameter_df <- data.frame(
    Variable = c('t<sup>op</sup>',
    'C <span class="supsub"><sup>op1</sup><sub>u,t</sub></span>',
    'C <span class="supsub"><sup>op2</sup><sub>u,t</sub></span>',
    'C <span class="supsub"><sup>inv1</sup><sub>TC</sub></span>',
    'C <span class="supsub"><sup>inv2</sup><sub>TC</sub></span>',
    'f <span class="supsub"><sup>min</sup><sub>u</sub></span>',
    'f <span class="supsub"><sup>max</sup><sub>u</sub></span>',
    'q <span class="supsub"><sup>hs</sup><sub>u</sub></span>',
    'm <span class="supsub"><sup>in</sup><sub>u</sub></span>',
    'm <span class="supsub"><sup>out</sup><sub>u</sub></span>',
    'Q&#775;mt <span class="supsub"><sup>-</sup><sub>t</sub></span>',
    'Q&#775;lt <span class="supsub"><sup>-</sup><sub>t</sub></span>',
    'E&#775; <span class="supsub"><sup>-</sup><sub>t</sub></span>',
    'Q&#775; <span class="supsub"><sup>heating</sup><sub>bt</sub></span>',
    'E&#775; <sub>bt</sub>',
    'w<sub>CAPEX</sub>', 
    'w<sub>OPEX</sub>',
    'w<sub>ENVEX</sub>', 
    '&#x3B3;<sup>CO <span class="supsub"><sup>+</sup><sub>2</sub></span></sup>',
    '&#x3B5; <span class="supsub"><sup>CO2</sup><sub>g</sub></span>','CAPEX','OPEX','ENVEX','y<sub>u</sub>','y<sub>u,t</sub>','f<sub>u</sub>','f<sub>u,t</sub>','h<sub>u,t,tl</sub>',
    'CO <span class="supsub"><sup>+</sup><sub>2</sub></span>'
    ),
    Description = c('Number of hours in period [h]','Fixed operating costs [CHF/h]','Variable operating cost [CHF/h]','Fixed investment cost [CHF/year]','Variable investment cost [CHF/year]',' Minimum sizing factor [-]','Maximum sizing factor [-]','Reference heating supply from a utility [kW]','Reference flow into a utility [various]','Reference flow out of a utility [various]','Total heating demand at medium temperature level [kW]','Total heating demand at low temperature level [kW]','Total electricity demand [kW]','Heating demand of a building [kW]','Electricity demand of a building [kW]','Weight factor for CAPEX','Weight factor for OPEX','Weight factor for ENVEX','CO<sub>2</sub> tax [CHF/year]','CO<sub>2</sub> emissions [g/kWh]','Annualized capital cost [CHF/year]','Operating cost [CHF/year]','Environmental cost (CO<sub>2</sub> tax) [CHF/year]', 'Binary variable to install a technology or not [-]','Binary variable to use the utility in time t or not [-]','Sizing factor for technology installation [-]','Sizing factor of utility [-]','Sizing factor of a utility for heating at temperature level tl [-]','CO<sub>2</sub> [tons/kWh]')
)

var_df <- data.frame(
    Variable = c('CAPEX','OPEX','ENVEX','y<sub>u</sub>','y<sub>u,t</sub>','f<sub>u</sub>','f<sub>u,t</sub>','h<sub>u,t,tl</sub>',
    'CO <span class="supsub"><sup>+</sup><sub>2</sub></span>'),
    Description = c('Annualized capital cost [CHF/year]','Operating cost [CHF/year]','Environmental cost (CO<sub>2</sub> tax) [CHF/year]', 'Binary variable to install a technology or not [-]','Binary variable to use the utility in time t or not [-]','Sizing factor for technology installation [-]','Sizing factor of utility [-]','Sizing factor of a utility for heating at temperature level tl [-]','CO<sub>2</sub> [tons/kWh]')
)
