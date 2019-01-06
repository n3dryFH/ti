library verilog;
use verilog.vl_types.all;
entity akkumulator_vlg_check_tst is
    port(
        c               : in     vl_logic;
        q               : in     vl_logic_vector(3 downto 0);
        z_out           : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end akkumulator_vlg_check_tst;
