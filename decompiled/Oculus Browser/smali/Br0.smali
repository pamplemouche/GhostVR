.class public abstract LBr0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lje1;

.field public static final b:Lke1;

.field public static final c:Lke1;

.field public static final d:Lje1;

.field public static final e:Lke1;

.field public static final f:Lke1;

.field public static final g:[LUd1;

.field public static final h:[LUd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lje1;

    invoke-direct {v0}, Lje1;-><init>()V

    sput-object v0, LBr0;->a:Lje1;

    .line 2
    new-instance v0, Lke1;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 4
    sput-object v0, LBr0;->b:Lke1;

    .line 5
    new-instance v0, Lke1;

    .line 6
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 7
    sput-object v0, LBr0;->c:Lke1;

    .line 8
    new-instance v0, Lje1;

    invoke-direct {v0}, Lje1;-><init>()V

    sput-object v0, LBr0;->d:Lje1;

    .line 9
    new-instance v0, Lke1;

    .line 10
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 11
    sput-object v0, LBr0;->e:Lke1;

    .line 12
    new-instance v0, Lke1;

    .line 13
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 14
    sput-object v0, LBr0;->f:Lke1;

    const/4 v2, 0x6

    new-array v2, v2, [LUd1;

    .line 15
    sget-object v3, LBr0;->b:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    sget-object v3, LBr0;->a:Lje1;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    sget-object v3, LBr0;->c:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    sget-object v3, LBr0;->e:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x4

    sget-object v3, LBr0;->d:Lje1;

    aput-object v3, v2, v1

    const/4 v1, 0x5

    aput-object v0, v2, v1

    sput-object v2, LBr0;->g:[LUd1;

    .line 16
    sget-object v0, LKr0;->e:[LUd1;

    .line 17
    invoke-static {v2, v0}, Lle1;->a([LUd1;[LUd1;)[LUd1;

    move-result-object v0

    sput-object v0, LBr0;->h:[LUd1;

    return-void
.end method
