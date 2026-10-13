.class public abstract LJ40;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lke1;

.field public static final b:Lje1;

.field public static final c:[LUd1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lke1;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 3
    sput-object v0, LJ40;->a:Lke1;

    .line 4
    new-instance v0, Lje1;

    invoke-direct {v0}, Lje1;-><init>()V

    sput-object v0, LJ40;->b:Lje1;

    const/4 v2, 0x2

    new-array v2, v2, [LUd1;

    .line 5
    sget-object v3, LJ40;->a:Lke1;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, LJ40;->c:[LUd1;

    return-void
.end method
