.class public final enum LVC;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:LVC;

.field public static final enum B:LVC;

.field public static final synthetic C:[LVC;

.field public static final enum w:LVC;

.field public static final enum x:LVC;

.field public static final enum y:LVC;

.field public static final enum z:LVC;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, LVC;

    const/4 v1, 0x0

    const-string v2, "INFO"

    invoke-direct {v0, v2, v1}, LVC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVC;->w:LVC;

    .line 2
    new-instance v0, LVC;

    const/4 v2, 0x1

    const-string v3, "INITIALIZE"

    invoke-direct {v0, v3, v2}, LVC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVC;->x:LVC;

    .line 3
    new-instance v0, LVC;

    const/4 v3, 0x2

    const-string v4, "INVALIDATION_ACK"

    invoke-direct {v0, v4, v3}, LVC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVC;->y:LVC;

    .line 4
    new-instance v0, LVC;

    const/4 v4, 0x3

    const-string v5, "REGISTRATION"

    invoke-direct {v0, v5, v4}, LVC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVC;->z:LVC;

    .line 5
    new-instance v0, LVC;

    const/4 v5, 0x4

    const-string v6, "REGISTRATION_SYNC"

    invoke-direct {v0, v6, v5}, LVC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVC;->A:LVC;

    .line 6
    new-instance v0, LVC;

    const/4 v6, 0x5

    const-string v7, "TOTAL"

    invoke-direct {v0, v7, v6}, LVC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVC;->B:LVC;

    const/4 v7, 0x6

    new-array v7, v7, [LVC;

    .line 7
    sget-object v8, LVC;->w:LVC;

    aput-object v8, v7, v1

    sget-object v1, LVC;->x:LVC;

    aput-object v1, v7, v2

    sget-object v1, LVC;->y:LVC;

    aput-object v1, v7, v3

    sget-object v1, LVC;->z:LVC;

    aput-object v1, v7, v4

    sget-object v1, LVC;->A:LVC;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, LVC;->C:[LVC;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LVC;
    .locals 1

    .line 1
    sget-object v0, LVC;->C:[LVC;

    invoke-virtual {v0}, [LVC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LVC;

    return-object v0
.end method
