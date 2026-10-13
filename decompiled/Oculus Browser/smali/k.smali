.class public final enum Lk;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:Lk;

.field public static final enum B:Lk;

.field public static final enum C:Lk;

.field public static final synthetic D:[Lk;

.field public static final enum w:Lk;

.field public static final enum x:Lk;

.field public static final enum y:Lk;

.field public static final enum z:Lk;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lk;

    const/4 v1, 0x0

    const-string v2, "ON_CREATE"

    invoke-direct {v0, v2, v1}, Lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk;->w:Lk;

    .line 2
    new-instance v0, Lk;

    const/4 v2, 0x1

    const-string v3, "ON_START"

    invoke-direct {v0, v3, v2}, Lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk;->x:Lk;

    .line 3
    new-instance v0, Lk;

    const/4 v3, 0x2

    const-string v4, "ON_RESUME"

    invoke-direct {v0, v4, v3}, Lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk;->y:Lk;

    .line 4
    new-instance v0, Lk;

    const/4 v4, 0x3

    const-string v5, "ON_PAUSE"

    invoke-direct {v0, v5, v4}, Lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk;->z:Lk;

    .line 5
    new-instance v0, Lk;

    const/4 v5, 0x4

    const-string v6, "ON_STOP"

    invoke-direct {v0, v6, v5}, Lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk;->A:Lk;

    .line 6
    new-instance v0, Lk;

    const/4 v6, 0x5

    const-string v7, "ON_DESTROY"

    invoke-direct {v0, v7, v6}, Lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk;->B:Lk;

    .line 7
    new-instance v0, Lk;

    const/4 v7, 0x6

    const-string v8, "ON_ANY"

    invoke-direct {v0, v8, v7}, Lk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk;->C:Lk;

    const/4 v8, 0x7

    new-array v8, v8, [Lk;

    .line 8
    sget-object v9, Lk;->w:Lk;

    aput-object v9, v8, v1

    sget-object v1, Lk;->x:Lk;

    aput-object v1, v8, v2

    sget-object v1, Lk;->y:Lk;

    aput-object v1, v8, v3

    sget-object v1, Lk;->z:Lk;

    aput-object v1, v8, v4

    sget-object v1, Lk;->A:Lk;

    aput-object v1, v8, v5

    sget-object v1, Lk;->B:Lk;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lk;->D:[Lk;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lk;
    .locals 1

    .line 1
    sget-object v0, Lk;->D:[Lk;

    invoke-virtual {v0}, [Lk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk;

    return-object v0
.end method
