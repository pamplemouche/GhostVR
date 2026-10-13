.class public final enum LAL;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LAL;

.field public static final enum x:LAL;

.field public static final enum y:LAL;

.field public static final enum z:LAL;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LAL;

    const/16 v1, 0x19

    const/4 v2, 0x0

    const-string v3, "LOG_DATA"

    invoke-direct {v0, v3, v2, v1}, LAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAL;->x:LAL;

    .line 2
    new-instance v0, LAL;

    const/16 v1, 0x1a

    const/4 v3, 0x1

    const-string v4, "LOG_DATA_REF"

    invoke-direct {v0, v4, v3, v1}, LAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAL;->y:LAL;

    .line 3
    new-instance v0, LAL;

    const/4 v1, 0x2

    const-string v4, "LOGDATAVALUE_NOT_SET"

    invoke-direct {v0, v4, v1, v2}, LAL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LAL;->z:LAL;

    const/4 v4, 0x3

    new-array v4, v4, [LAL;

    .line 4
    sget-object v5, LAL;->x:LAL;

    aput-object v5, v4, v2

    sget-object v2, LAL;->y:LAL;

    aput-object v2, v4, v3

    aput-object v0, v4, v1

    sput-object v4, LAL;->A:[LAL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LAL;->w:I

    return-void
.end method

.method public static a(I)LAL;
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LAL;->y:LAL;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LAL;->x:LAL;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LAL;->z:LAL;

    return-object p0
.end method

.method public static values()[LAL;
    .locals 1

    .line 1
    sget-object v0, LAL;->A:[LAL;

    invoke-virtual {v0}, [LAL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAL;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LAL;->w:I

    return v0
.end method
