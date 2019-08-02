import java.algs4.WeightedQuickUnionUF;
public class Percolation {
    
    private WeightedQuickUnionUF grid, auxGrid;
    private boolean[]   state;
    private int     N;

    // create N-by-N grid, with all sites blocked
    public Percolation(int N) {

        int siteCount = N * N;
        this.N = N;

        // index 0 and N^2+1 are reserved for virtual top and bottom sites
        grid    = new WeightedQuickUnionUF(siteCount + 2);
        auxGrid = new WeightedQuickUnionUF(siteCount + 1);
        state   = new boolean[siteCount + 2];

        // Initialize all sites to be blocked.
        for (int i = 1; i <= siteCount; i++)
            state[i] = false;
        // Initialize virtual top and bottom site with open state
        state[0] = true;
        state[siteCount+1] = true;
    }
}
