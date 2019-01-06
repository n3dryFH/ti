library verilog;
use verilog.vl_types.all;
entity akkumulator_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic_vector(3 downto 0);
        e               : in     vl_logic;
        ld              : in     vl_logic;
        sub             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end akkumulator_vlg_sample_tst;
