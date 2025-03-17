// Author: Chris Brewer (@BrewKris) 2025 
// License: MIT see LICENSE file in root directory

// vld ack interface for acknowledgement signaling

interface vld_ack_if #(
    parameter type vld_data_st = logic[1:0]
);
vld_data_st vld_data;
logic ack;
logic vld;

// Source
modport src  (output vld_data, vld, input ack);

// Destination
modport dst  (input vld_data, vld, output ack);

endinterface
