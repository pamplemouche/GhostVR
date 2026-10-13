.class public final enum LDS0;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LDS0;

.field public static final synthetic B:[LDS0;

.field public static final enum x:LDS0;

.field public static final enum y:LDS0;

.field public static final enum z:LDS0;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LDS0;

    const/4 v1, 0x0

    const-string v2, "ONE_OFF"

    invoke-direct {v0, v2, v1, v1}, LDS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDS0;->x:LDS0;

    .line 2
    new-instance v0, LDS0;

    const/4 v2, 0x1

    const-string v3, "PERIODIC"

    invoke-direct {v0, v3, v2, v2}, LDS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDS0;->y:LDS0;

    .line 3
    new-instance v0, LDS0;

    const/4 v3, 0x2

    const-string v4, "EXACT"

    invoke-direct {v0, v4, v3, v3}, LDS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDS0;->z:LDS0;

    .line 4
    new-instance v0, LDS0;

    const/4 v4, -0x1

    const/4 v5, 0x3

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v0, v6, v5, v4}, LDS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDS0;->A:LDS0;

    const/4 v4, 0x4

    new-array v4, v4, [LDS0;

    .line 5
    sget-object v6, LDS0;->x:LDS0;

    aput-object v6, v4, v1

    sget-object v1, LDS0;->y:LDS0;

    aput-object v1, v4, v2

    sget-object v1, LDS0;->z:LDS0;

    aput-object v1, v4, v3

    aput-object v0, v4, v5

    sput-object v4, LDS0;->B:[LDS0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LDS0;->w:I

    return-void
.end method

.method public static a(I)LDS0;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, LDS0;->z:LDS0;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LDS0;->y:LDS0;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LDS0;->x:LDS0;

    return-object p0
.end method

.method public static values()[LDS0;
    .locals 1

    .line 1
    sget-object v0, LDS0;->B:[LDS0;

    invoke-virtual {v0}, [LDS0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDS0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LDS0;->w:I

    return v0
.end method
