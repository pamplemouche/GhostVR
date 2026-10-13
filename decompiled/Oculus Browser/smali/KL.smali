.class public final enum LKL;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LKL;

.field public static final enum x:LKL;

.field public static final enum y:LKL;

.field public static final enum z:LKL;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LKL;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "WIDTH"

    invoke-direct {v0, v3, v2, v1}, LKL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LKL;->x:LKL;

    .line 2
    new-instance v0, LKL;

    const/4 v1, 0x5

    const/4 v3, 0x1

    const-string v4, "WIDTH_BINDING"

    invoke-direct {v0, v4, v3, v1}, LKL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LKL;->y:LKL;

    .line 3
    new-instance v0, LKL;

    const/4 v1, 0x2

    const-string v4, "CELLWIDTH_NOT_SET"

    invoke-direct {v0, v4, v1, v2}, LKL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LKL;->z:LKL;

    const/4 v4, 0x3

    new-array v4, v4, [LKL;

    .line 4
    sget-object v5, LKL;->x:LKL;

    aput-object v5, v4, v2

    sget-object v2, LKL;->y:LKL;

    aput-object v2, v4, v3

    aput-object v0, v4, v1

    sput-object v4, LKL;->A:[LKL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LKL;->w:I

    return-void
.end method

.method public static a(I)LKL;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LKL;->y:LKL;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LKL;->x:LKL;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LKL;->z:LKL;

    return-object p0
.end method

.method public static values()[LKL;
    .locals 1

    .line 1
    sget-object v0, LKL;->A:[LKL;

    invoke-virtual {v0}, [LKL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LKL;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LKL;->w:I

    return v0
.end method
