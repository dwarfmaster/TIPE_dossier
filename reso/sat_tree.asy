
unitsize(10cm);

int levels = 7;
real h  = 4;
real lh = h / levels;
int[] rds = {2*37, 4*37, 4*37+1, 2*37+1, 4*37+2,4*37+3};

int[] bls = {  4,      6,
             16,18,  24,26,
             33,37,  49,53,};
int[] mkRDS() {
    int[] rs = {};
    int[] roots = {33,37,49,53};
    for(int i = 0; i < roots.length; ++i) {
        int r = roots[i];
        int[] b = {2*r, 4*r, 4*r+1, 2*r+1, 4*r+2, 4*r+3};
        rs.append(b);
    }
    return rs;
}
int[] rds = mkRDS();

bool isH(int i, int[] a) {
    for(int j = 0; j < a.length; ++j) {
        if(i == a[j]) {
            return true;
        }
    }
    return false;
}

void tree(int n, pair o, real w, int id) {
    if(n == 0) {
        return;
    }
    
    pair pl = (o.x - w/4, o.y - lh);
    pair pr = (o.x + w/4, o.y - lh);
    if(isH(2*id, bls)) {
        draw(o -- pl, blue);
    } else if (isH(2*id, rds)) {
        draw(o -- pl, red);
    } else {
        draw(o -- pl);
    }
    if(isH(2*id + 1, bls)) {
        draw(o -- pr, blue);
    } else if (isH(2*id + 1, rds)) {
        draw(o -- pr, red);
    } else {
        draw(o -- pr);
    }

    tree(n-1, pl, w/2, 2*id);
    tree(n-1, pr, w/2, 2*id + 1);
}

tree(levels, (0,0), 10, 1);

