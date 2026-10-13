.class public abstract LI40;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lke1;

.field public static final b:Lje1;

.field public static final c:Lke1;

.field public static final d:Lke1;

.field public static final e:Lje1;

.field public static final f:Lke1;

.field public static final g:Lhe1;

.field public static final h:[LUd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lke1;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 3
    sput-object v0, LI40;->a:Lke1;

    .line 4
    new-instance v0, Lje1;

    invoke-direct {v0}, Lje1;-><init>()V

    sput-object v0, LI40;->b:Lje1;

    .line 5
    new-instance v0, Lke1;

    .line 6
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 7
    sput-object v0, LI40;->c:Lke1;

    .line 8
    new-instance v0, Lke1;

    .line 9
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 10
    sput-object v0, LI40;->d:Lke1;

    .line 11
    new-instance v0, Lje1;

    invoke-direct {v0}, Lje1;-><init>()V

    sput-object v0, LI40;->e:Lje1;

    .line 12
    new-instance v0, Lke1;

    .line 13
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 14
    sput-object v0, LI40;->f:Lke1;

    .line 15
    new-instance v0, Lhe1;

    invoke-direct {v0}, Lhe1;-><init>()V

    sput-object v0, LI40;->g:Lhe1;

    const/4 v2, 0x7

    new-array v2, v2, [LUd1;

    .line 16
    sget-object v3, LI40;->a:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    sget-object v3, LI40;->b:Lje1;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    sget-object v3, LI40;->c:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    sget-object v3, LI40;->d:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x4

    sget-object v3, LI40;->e:Lje1;

    aput-object v3, v2, v1

    const/4 v1, 0x5

    sget-object v3, LI40;->f:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x6

    aput-object v0, v2, v1

    sput-object v2, LI40;->h:[LUd1;

    return-void
.end method
