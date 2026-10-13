.class public final enum LcN;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LcN;

.field public static final synthetic B:[LcN;

.field public static final enum x:LcN;

.field public static final enum y:LcN;

.field public static final enum z:LcN;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LcN;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "FRAME_WIDTH"

    invoke-direct {v0, v3, v2, v1}, LcN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcN;->x:LcN;

    .line 2
    new-instance v0, LcN;

    const/4 v3, 0x2

    const-string v4, "ORIENTATION"

    invoke-direct {v0, v4, v1, v3}, LcN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcN;->y:LcN;

    .line 3
    new-instance v0, LcN;

    const/4 v4, 0x3

    const-string v5, "DARK_LIGHT"

    invoke-direct {v0, v5, v3, v4}, LcN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcN;->z:LcN;

    .line 4
    new-instance v0, LcN;

    const-string v5, "CONDITION_NOT_SET"

    invoke-direct {v0, v5, v4, v2}, LcN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LcN;->A:LcN;

    const/4 v5, 0x4

    new-array v5, v5, [LcN;

    .line 5
    sget-object v6, LcN;->x:LcN;

    aput-object v6, v5, v2

    sget-object v2, LcN;->y:LcN;

    aput-object v2, v5, v1

    sget-object v1, LcN;->z:LcN;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, LcN;->B:[LcN;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LcN;->w:I

    return-void
.end method

.method public static a(I)LcN;
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

    .line 1
    :cond_0
    sget-object p0, LcN;->z:LcN;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LcN;->y:LcN;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LcN;->x:LcN;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, LcN;->A:LcN;

    return-object p0
.end method

.method public static values()[LcN;
    .locals 1

    .line 1
    sget-object v0, LcN;->B:[LcN;

    invoke-virtual {v0}, [LcN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LcN;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 5
    iget v0, p0, LcN;->w:I

    return v0
.end method
