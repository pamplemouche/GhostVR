.class public final enum LiO;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LiO;

.field public static final synthetic B:[LiO;

.field public static final enum x:LiO;

.field public static final enum y:LiO;

.field public static final enum z:LiO;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LiO;

    const/4 v1, 0x0

    const-string v2, "GRAVITY_VERTICAL_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, LiO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LiO;->x:LiO;

    .line 2
    new-instance v0, LiO;

    const/4 v2, 0x1

    const-string v3, "GRAVITY_TOP"

    invoke-direct {v0, v3, v2, v2}, LiO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LiO;->y:LiO;

    .line 3
    new-instance v0, LiO;

    const/4 v3, 0x2

    const-string v4, "GRAVITY_MIDDLE"

    invoke-direct {v0, v4, v3, v3}, LiO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LiO;->z:LiO;

    .line 4
    new-instance v0, LiO;

    const/4 v4, 0x3

    const-string v5, "GRAVITY_BOTTOM"

    invoke-direct {v0, v5, v4, v4}, LiO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LiO;->A:LiO;

    const/4 v5, 0x4

    new-array v5, v5, [LiO;

    .line 5
    sget-object v6, LiO;->x:LiO;

    aput-object v6, v5, v1

    sget-object v1, LiO;->y:LiO;

    aput-object v1, v5, v2

    sget-object v1, LiO;->z:LiO;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, LiO;->B:[LiO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LiO;->w:I

    return-void
.end method

.method public static a(I)LiO;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, LiO;->A:LiO;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LiO;->z:LiO;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LiO;->y:LiO;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, LiO;->x:LiO;

    return-object p0
.end method

.method public static values()[LiO;
    .locals 1

    .line 1
    sget-object v0, LiO;->B:[LiO;

    invoke-virtual {v0}, [LiO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LiO;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LiO;->w:I

    return v0
.end method
