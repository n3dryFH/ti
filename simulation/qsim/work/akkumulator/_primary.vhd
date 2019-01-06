library verilog;
use verilog.vl_types.all;
entity akkumulator is
    port(
        d               : in     vl_logic_vector(3 downto 0);
        ld              : in     vl_logic;
        sub             : in     vl_logic;
        e               : in     vl_logic;
        clk             : in     vl_logic;
        c               : out    vl_logic;
        q               : out    vl_logic_vector(3 downto 0);
        z_out           : out    vl_logic_vector(4 downto 0)
    );
end akkumulator;
