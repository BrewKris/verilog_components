// Author: Chris Brewer (@BrewKris) 2025 
// License: MIT see LICENSE file in root directory
// Description: Ready Valid Interface

// rdy vld interface transfers data when both rdy and vld are high

interface rdy_vld_if #(
    parameter type data_st = logic[1:0]
);
data_st data;

logic rdy;
logic vld;

// Source
modport src  (output data, vld, input rdy);

// Destination
modport dst  (input data, vld, output rdy);

endinterface
