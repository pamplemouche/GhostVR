.class public final enum LEO;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LEO;

.field public static final enum x:LEO;

.field public static final enum y:LEO;

.field public static final enum z:LEO;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LEO;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "ACTIONS"

    invoke-direct {v0, v3, v2, v1}, LEO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LEO;->x:LEO;

    .line 2
    new-instance v0, LEO;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, "ACTIONS_BINDING"

    invoke-direct {v0, v5, v4, v3}, LEO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LEO;->y:LEO;

    .line 3
    new-instance v0, LEO;

    const/4 v3, 0x2

    const-string v5, "ACTIONSDATA_NOT_SET"

    invoke-direct {v0, v5, v3, v2}, LEO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LEO;->z:LEO;

    new-array v1, v1, [LEO;

    .line 4
    sget-object v5, LEO;->x:LEO;

    aput-object v5, v1, v2

    sget-object v2, LEO;->y:LEO;

    aput-object v2, v1, v4

    aput-object v0, v1, v3

    sput-object v1, LEO;->A:[LEO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LEO;->w:I

    return-void
.end method

.method public static a(I)LEO;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LEO;->y:LEO;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LEO;->x:LEO;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LEO;->z:LEO;

    return-object p0
.end method

.method public static values()[LEO;
    .locals 1

    .line 1
    sget-object v0, LEO;->A:[LEO;

    invoke-virtual {v0}, [LEO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEO;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LEO;->w:I

    return v0
.end method
