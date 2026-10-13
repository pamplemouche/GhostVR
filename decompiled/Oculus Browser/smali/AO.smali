.class public final enum LAO;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LAO;

.field public static final enum x:LAO;

.field public static final enum y:LAO;

.field public static final enum z:LAO;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LAO;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "COMMON_TYPEFACE"

    invoke-direct {v0, v3, v2, v1}, LAO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAO;->x:LAO;

    .line 2
    new-instance v0, LAO;

    const/4 v3, 0x2

    const-string v4, "CUSTOM_TYPEFACE"

    invoke-direct {v0, v4, v1, v3}, LAO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAO;->y:LAO;

    .line 3
    new-instance v0, LAO;

    const-string v4, "TYPEFACESPECIFIER_NOT_SET"

    invoke-direct {v0, v4, v3, v2}, LAO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAO;->z:LAO;

    const/4 v4, 0x3

    new-array v4, v4, [LAO;

    .line 4
    sget-object v5, LAO;->x:LAO;

    aput-object v5, v4, v2

    sget-object v2, LAO;->y:LAO;

    aput-object v2, v4, v1

    aput-object v0, v4, v3

    sput-object v4, LAO;->A:[LAO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LAO;->w:I

    return-void
.end method

.method public static a(I)LAO;
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
    sget-object p0, LAO;->y:LAO;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LAO;->x:LAO;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LAO;->z:LAO;

    return-object p0
.end method

.method public static values()[LAO;
    .locals 1

    .line 1
    sget-object v0, LAO;->A:[LAO;

    invoke-virtual {v0}, [LAO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAO;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LAO;->w:I

    return v0
.end method
