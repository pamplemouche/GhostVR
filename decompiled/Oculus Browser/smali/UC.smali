.class public final enum LUC;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:LUC;

.field public static final enum B:LUC;

.field public static final enum C:LUC;

.field public static final enum D:LUC;

.field public static final enum E:LUC;

.field public static final synthetic F:[LUC;

.field public static final enum w:LUC;

.field public static final enum x:LUC;

.field public static final enum y:LUC;

.field public static final enum z:LUC;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, LUC;

    const/4 v1, 0x0

    const-string v2, "INFO_REQUEST"

    invoke-direct {v0, v2, v1}, LUC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUC;->w:LUC;

    .line 2
    new-instance v0, LUC;

    const/4 v2, 0x1

    const-string v3, "INVALIDATION"

    invoke-direct {v0, v3, v2}, LUC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUC;->x:LUC;

    .line 3
    new-instance v0, LUC;

    const/4 v3, 0x2

    const-string v4, "REGISTRATION_STATUS"

    invoke-direct {v0, v4, v3}, LUC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUC;->y:LUC;

    .line 4
    new-instance v0, LUC;

    const/4 v4, 0x3

    const-string v5, "REGISTRATION_SYNC_REQUEST"

    invoke-direct {v0, v5, v4}, LUC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUC;->z:LUC;

    .line 5
    new-instance v0, LUC;

    const/4 v5, 0x4

    const-string v6, "TOKEN_CONTROL"

    invoke-direct {v0, v6, v5}, LUC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUC;->A:LUC;

    .line 6
    new-instance v0, LUC;

    const/4 v6, 0x5

    const-string v7, "ERROR"

    invoke-direct {v0, v7, v6}, LUC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUC;->B:LUC;

    .line 7
    new-instance v0, LUC;

    const/4 v7, 0x6

    const-string v8, "CONFIG_CHANGE"

    invoke-direct {v0, v8, v7}, LUC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUC;->C:LUC;

    .line 8
    new-instance v0, LUC;

    const/4 v8, 0x7

    const-string v9, "STALE_INVALIDATION"

    invoke-direct {v0, v9, v8}, LUC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUC;->D:LUC;

    .line 9
    new-instance v0, LUC;

    const/16 v9, 0x8

    const-string v10, "TOTAL"

    invoke-direct {v0, v10, v9}, LUC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUC;->E:LUC;

    const/16 v10, 0x9

    new-array v10, v10, [LUC;

    .line 10
    sget-object v11, LUC;->w:LUC;

    aput-object v11, v10, v1

    sget-object v1, LUC;->x:LUC;

    aput-object v1, v10, v2

    sget-object v1, LUC;->y:LUC;

    aput-object v1, v10, v3

    sget-object v1, LUC;->z:LUC;

    aput-object v1, v10, v4

    sget-object v1, LUC;->A:LUC;

    aput-object v1, v10, v5

    sget-object v1, LUC;->B:LUC;

    aput-object v1, v10, v6

    sget-object v1, LUC;->C:LUC;

    aput-object v1, v10, v7

    sget-object v1, LUC;->D:LUC;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, LUC;->F:[LUC;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LUC;
    .locals 1

    .line 1
    sget-object v0, LUC;->F:[LUC;

    invoke-virtual {v0}, [LUC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LUC;

    return-object v0
.end method
