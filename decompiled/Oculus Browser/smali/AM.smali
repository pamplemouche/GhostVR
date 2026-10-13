.class public final enum LAM;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LAM;

.field public static final enum x:LAM;

.field public static final enum y:LAM;

.field public static final enum z:LAM;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LAM;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "COLOR"

    invoke-direct {v0, v3, v2, v1}, LAM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAM;->x:LAM;

    .line 2
    new-instance v0, LAM;

    const/4 v3, 0x2

    const-string v4, "LINEAR_GRADIENT"

    invoke-direct {v0, v4, v1, v3}, LAM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAM;->y:LAM;

    .line 3
    new-instance v0, LAM;

    const-string v4, "FILLTYPE_NOT_SET"

    invoke-direct {v0, v4, v3, v2}, LAM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAM;->z:LAM;

    const/4 v4, 0x3

    new-array v4, v4, [LAM;

    .line 4
    sget-object v5, LAM;->x:LAM;

    aput-object v5, v4, v2

    sget-object v2, LAM;->y:LAM;

    aput-object v2, v4, v1

    aput-object v0, v4, v3

    sput-object v4, LAM;->A:[LAM;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LAM;->w:I

    return-void
.end method

.method public static a(I)LAM;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LAM;->y:LAM;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LAM;->x:LAM;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LAM;->z:LAM;

    return-object p0
.end method

.method public static values()[LAM;
    .locals 1

    .line 1
    sget-object v0, LAM;->A:[LAM;

    invoke-virtual {v0}, [LAM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAM;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LAM;->w:I

    return v0
.end method
