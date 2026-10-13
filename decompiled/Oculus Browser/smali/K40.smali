.class public abstract LK40;
.super LJ40;
.source "PG"


# static fields
.field public static final d:Lke1;

.field public static final e:Lke1;

.field public static final f:Lke1;

.field public static final g:[LUd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lke1;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 3
    sput-object v0, LK40;->d:Lke1;

    .line 4
    new-instance v0, Lke1;

    .line 5
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 6
    sput-object v0, LK40;->e:Lke1;

    .line 7
    new-instance v0, Lke1;

    .line 8
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 9
    sput-object v0, LK40;->f:Lke1;

    .line 10
    sget-object v0, LJ40;->c:[LUd1;

    const/4 v2, 0x3

    new-array v2, v2, [LUd1;

    sget-object v3, LK40;->d:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    sget-object v3, LK40;->e:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    sget-object v3, LK40;->f:Lke1;

    aput-object v3, v2, v1

    .line 11
    invoke-static {v0, v2}, Lle1;->a([LUd1;[LUd1;)[LUd1;

    move-result-object v0

    sput-object v0, LK40;->g:[LUd1;

    return-void
.end method
