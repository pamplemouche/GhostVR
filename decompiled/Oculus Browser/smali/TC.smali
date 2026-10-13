.class public final enum LTC;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:LTC;

.field public static final enum B:LTC;

.field public static final enum C:LTC;

.field public static final synthetic D:[LTC;

.field public static final enum w:LTC;

.field public static final enum x:LTC;

.field public static final enum y:LTC;

.field public static final enum z:LTC;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, LTC;

    const/4 v1, 0x0

    const-string v2, "INFORM_ERROR"

    invoke-direct {v0, v2, v1}, LTC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTC;->w:LTC;

    .line 2
    new-instance v0, LTC;

    const/4 v2, 0x1

    const-string v3, "INFORM_REGISTRATION_FAILURE"

    invoke-direct {v0, v3, v2}, LTC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTC;->x:LTC;

    .line 3
    new-instance v0, LTC;

    const/4 v3, 0x2

    const-string v4, "INFORM_REGISTRATION_STATUS"

    invoke-direct {v0, v4, v3}, LTC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTC;->y:LTC;

    .line 4
    new-instance v0, LTC;

    const/4 v4, 0x3

    const-string v5, "INVALIDATE"

    invoke-direct {v0, v5, v4}, LTC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTC;->z:LTC;

    .line 5
    new-instance v0, LTC;

    const/4 v5, 0x4

    const-string v6, "INVALIDATE_ALL"

    invoke-direct {v0, v6, v5}, LTC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTC;->A:LTC;

    .line 6
    new-instance v0, LTC;

    const/4 v6, 0x5

    const-string v7, "INVALIDATE_UNKNOWN"

    invoke-direct {v0, v7, v6}, LTC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTC;->B:LTC;

    .line 7
    new-instance v0, LTC;

    const/4 v7, 0x6

    const-string v8, "REISSUE_REGISTRATIONS"

    invoke-direct {v0, v8, v7}, LTC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LTC;->C:LTC;

    const/4 v8, 0x7

    new-array v8, v8, [LTC;

    .line 8
    sget-object v9, LTC;->w:LTC;

    aput-object v9, v8, v1

    sget-object v1, LTC;->x:LTC;

    aput-object v1, v8, v2

    sget-object v1, LTC;->y:LTC;

    aput-object v1, v8, v3

    sget-object v1, LTC;->z:LTC;

    aput-object v1, v8, v4

    sget-object v1, LTC;->A:LTC;

    aput-object v1, v8, v5

    sget-object v1, LTC;->B:LTC;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, LTC;->D:[LTC;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LTC;
    .locals 1

    .line 1
    sget-object v0, LTC;->D:[LTC;

    invoke-virtual {v0}, [LTC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LTC;

    return-object v0
.end method
