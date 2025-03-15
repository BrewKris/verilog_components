// Author: Chris Brewer (@BrewKris) 2025 
// License: MIT see LICENSE file in root directory
// rdy vld interface transfers data when both rdy and vld are high

/*
@WAVEDROM_START
{ signal: [
  { name: 'clk',    wave: 'p.............'},
  ['src', 
    { name: 'vld_data', wave: 'x5.5x..55.|..x', data: ['D1', 'D2', 'D3', 'D4'] },
    { name: 'vld',     wave: '01..0..1..|..0' }
  ],
  ['dst',
    { name: 'rdy',     wave: '0.1.....0.|.10' }
  ]
]}
@WAVEDROM_END
*/

interface rdy_vld_if #(
    parameter type vld_data_st = logic[1:0]
);
vld_data_st vld_data;

logic rdy;
logic vld;

// Source
modport src  (output vld_data, vld, input rdy);

// Destination
modport dst  (input vld_data, vld, output rdy);

endinterface // rdy_vld_if
