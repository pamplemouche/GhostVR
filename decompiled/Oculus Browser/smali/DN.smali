.class public final enum LDN;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LDN;

.field public static final synthetic B:[LDN;

.field public static final enum x:LDN;

.field public static final enum y:LDN;

.field public static final enum z:LDN;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LDN;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "RADIUS_DP"

    invoke-direct {v0, v3, v2, v1}, LDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDN;->x:LDN;

    .line 2
    new-instance v0, LDN;

    const/4 v3, 0x5

    const/4 v4, 0x1

    const-string v5, "RADIUS_PERCENTAGE_OF_HEIGHT"

    invoke-direct {v0, v5, v4, v3}, LDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDN;->y:LDN;

    .line 3
    new-instance v0, LDN;

    const/4 v3, 0x6

    const/4 v5, 0x2

    const-string v6, "RADIUS_PERCENTAGE_OF_WIDTH"

    invoke-direct {v0, v6, v5, v3}, LDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDN;->z:LDN;

    .line 4
    new-instance v0, LDN;

    const/4 v3, 0x3

    const-string v6, "RADIUSOPTIONS_NOT_SET"

    invoke-direct {v0, v6, v3, v2}, LDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDN;->A:LDN;

    new-array v1, v1, [LDN;

    .line 5
    sget-object v6, LDN;->x:LDN;

    aput-object v6, v1, v2

    sget-object v2, LDN;->y:LDN;

    aput-object v2, v1, v4

    sget-object v2, LDN;->z:LDN;

    aput-object v2, v1, v5

    aput-object v0, v1, v3

    sput-object v1, LDN;->B:[LDN;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LDN;->w:I

    return-void
.end method

.method public static a(I)LDN;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LDN;->z:LDN;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LDN;->y:LDN;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LDN;->x:LDN;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, LDN;->A:LDN;

    return-object p0
.end method

.method public static values()[LDN;
    .locals 1

    .line 1
    sget-object v0, LDN;->B:[LDN;

    invoke-virtual {v0}, [LDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDN;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 5
    iget v0, p0, LDN;->w:I

    return v0
.end method
