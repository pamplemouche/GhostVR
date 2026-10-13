.class public final enum LRF;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:LRF;

.field public static final enum B:LRF;

.field public static final enum C:LRF;

.field public static final enum D:LRF;

.field public static final synthetic E:[LRF;

.field public static final enum w:LRF;

.field public static final enum x:LRF;

.field public static final enum y:LRF;

.field public static final enum z:LRF;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, LRF;

    const/4 v1, 0x0

    const-string v2, "IS_INITIALIZED"

    invoke-direct {v0, v2, v1}, LRF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRF;->w:LRF;

    .line 2
    new-instance v0, LRF;

    const/4 v2, 0x1

    const-string v3, "VISIT"

    invoke-direct {v0, v3, v2}, LRF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRF;->x:LRF;

    .line 3
    new-instance v0, LRF;

    const/4 v3, 0x2

    const-string v4, "MERGE_FROM_STREAM"

    invoke-direct {v0, v4, v3}, LRF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRF;->y:LRF;

    .line 4
    new-instance v0, LRF;

    const/4 v4, 0x3

    const-string v5, "MAKE_IMMUTABLE"

    invoke-direct {v0, v5, v4}, LRF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRF;->z:LRF;

    .line 5
    new-instance v0, LRF;

    const/4 v5, 0x4

    const-string v6, "NEW_MUTABLE_INSTANCE"

    invoke-direct {v0, v6, v5}, LRF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRF;->A:LRF;

    .line 6
    new-instance v0, LRF;

    const/4 v6, 0x5

    const-string v7, "NEW_BUILDER"

    invoke-direct {v0, v7, v6}, LRF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRF;->B:LRF;

    .line 7
    new-instance v0, LRF;

    const/4 v7, 0x6

    const-string v8, "GET_DEFAULT_INSTANCE"

    invoke-direct {v0, v8, v7}, LRF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRF;->C:LRF;

    .line 8
    new-instance v0, LRF;

    const/4 v8, 0x7

    const-string v9, "GET_PARSER"

    invoke-direct {v0, v9, v8}, LRF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRF;->D:LRF;

    const/16 v9, 0x8

    new-array v9, v9, [LRF;

    .line 9
    sget-object v10, LRF;->w:LRF;

    aput-object v10, v9, v1

    sget-object v1, LRF;->x:LRF;

    aput-object v1, v9, v2

    sget-object v1, LRF;->y:LRF;

    aput-object v1, v9, v3

    sget-object v1, LRF;->z:LRF;

    aput-object v1, v9, v4

    sget-object v1, LRF;->A:LRF;

    aput-object v1, v9, v5

    sget-object v1, LRF;->B:LRF;

    aput-object v1, v9, v6

    sget-object v1, LRF;->C:LRF;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, LRF;->E:[LRF;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LRF;
    .locals 1

    .line 1
    sget-object v0, LRF;->E:[LRF;

    invoke-virtual {v0}, [LRF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LRF;

    return-object v0
.end method
