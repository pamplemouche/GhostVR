.class public final enum LpC;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum w:LpC;

.field public static final enum x:LpC;

.field public static final enum y:LpC;

.field public static final synthetic z:[LpC;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LpC;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, LpC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpC;->w:LpC;

    .line 2
    new-instance v0, LpC;

    const/4 v2, 0x1

    const-string v3, "TRANSIENT_FAILURE"

    invoke-direct {v0, v3, v2}, LpC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpC;->x:LpC;

    .line 3
    new-instance v0, LpC;

    const/4 v3, 0x2

    const-string v4, "PERMANENT_FAILURE"

    invoke-direct {v0, v4, v3}, LpC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LpC;->y:LpC;

    const/4 v4, 0x3

    new-array v4, v4, [LpC;

    .line 4
    sget-object v5, LpC;->w:LpC;

    aput-object v5, v4, v1

    sget-object v1, LpC;->x:LpC;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, LpC;->z:[LpC;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LpC;
    .locals 1

    .line 1
    sget-object v0, LpC;->z:[LpC;

    invoke-virtual {v0}, [LpC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LpC;

    return-object v0
.end method
