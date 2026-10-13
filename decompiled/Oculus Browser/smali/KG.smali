.class public final enum LKG;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:LKG;

.field public static final enum B:LKG;

.field public static final enum C:LKG;

.field public static final enum D:LKG;

.field public static final enum E:LKG;

.field public static final synthetic F:[LKG;

.field public static final enum w:LKG;

.field public static final enum x:LKG;

.field public static final enum y:LKG;

.field public static final enum z:LKG;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, LKG;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, LKG;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, LKG;->w:LKG;

    .line 2
    new-instance v0, LKG;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "LONG"

    invoke-direct {v0, v4, v3, v2}, LKG;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, LKG;->x:LKG;

    .line 3
    new-instance v0, LKG;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x2

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v4, v2}, LKG;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, LKG;->y:LKG;

    .line 4
    new-instance v0, LKG;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v5, 0x3

    const-string v6, "DOUBLE"

    invoke-direct {v0, v6, v5, v2}, LKG;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, LKG;->z:LKG;

    .line 5
    new-instance v0, LKG;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x4

    const-string v7, "BOOLEAN"

    invoke-direct {v0, v7, v6, v2}, LKG;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, LKG;->A:LKG;

    .line 6
    new-instance v0, LKG;

    const-string v2, ""

    const/4 v7, 0x5

    const-string v8, "STRING"

    invoke-direct {v0, v8, v7, v2}, LKG;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, LKG;->B:LKG;

    .line 7
    new-instance v0, LKG;

    sget-object v2, LrF;->x:LrF;

    const/4 v8, 0x6

    const-string v9, "BYTE_STRING"

    invoke-direct {v0, v9, v8, v2}, LKG;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, LKG;->C:LKG;

    .line 8
    new-instance v0, LKG;

    const/4 v2, 0x0

    const/4 v9, 0x7

    const-string v10, "ENUM"

    invoke-direct {v0, v10, v9, v2}, LKG;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, LKG;->D:LKG;

    .line 9
    new-instance v0, LKG;

    const/16 v10, 0x8

    const-string v11, "MESSAGE"

    invoke-direct {v0, v11, v10, v2}, LKG;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, LKG;->E:LKG;

    const/16 v2, 0x9

    new-array v2, v2, [LKG;

    .line 10
    sget-object v11, LKG;->w:LKG;

    aput-object v11, v2, v1

    sget-object v1, LKG;->x:LKG;

    aput-object v1, v2, v3

    sget-object v1, LKG;->y:LKG;

    aput-object v1, v2, v4

    sget-object v1, LKG;->z:LKG;

    aput-object v1, v2, v5

    sget-object v1, LKG;->A:LKG;

    aput-object v1, v2, v6

    sget-object v1, LKG;->B:LKG;

    aput-object v1, v2, v7

    sget-object v1, LKG;->C:LKG;

    aput-object v1, v2, v8

    sget-object v1, LKG;->D:LKG;

    aput-object v1, v2, v9

    aput-object v0, v2, v10

    sput-object v2, LKG;->F:[LKG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LKG;
    .locals 1

    .line 1
    sget-object v0, LKG;->F:[LKG;

    invoke-virtual {v0}, [LKG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LKG;

    return-object v0
.end method
