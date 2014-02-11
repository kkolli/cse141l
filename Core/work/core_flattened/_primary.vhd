library verilog;
use verilog.vl_types.all;
entity core_flattened is
    generic(
        imem_addr_width_p: integer := 10;
        net_ID_p        : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        net_packet_flat_i: in     vl_logic_vector(54 downto 0);
        net_packet_flat_o: out    vl_logic_vector(54 downto 0);
        from_mem_flat_i : in     vl_logic_vector(33 downto 0);
        to_mem_flat_o   : out    vl_logic_vector(35 downto 0);
        barrier_o       : out    vl_logic_vector(2 downto 0);
        exception_o     : out    vl_logic;
        debug_flat_o    : out    vl_logic_vector(33 downto 0);
        data_mem_addr   : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of imem_addr_width_p : constant is 1;
    attribute mti_svvh_generic_type of net_ID_p : constant is 1;
end core_flattened;
