.class public LFt0;
.super Lle1;
.source "PG"


# static fields
.field public static final c:Lke1;

.field public static final d:Lke1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lke1;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 3
    sput-object v0, LFt0;->c:Lke1;

    .line 4
    new-instance v0, Lke1;

    .line 5
    invoke-direct {v0, v1}, Lke1;-><init>(Z)V

    .line 6
    sput-object v0, LFt0;->d:Lke1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [LUd1;

    .line 1
    sget-object v1, LFt0;->c:Lke1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, LFt0;->d:Lke1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lle1;-><init>([LUd1;)V

    return-void
.end method
