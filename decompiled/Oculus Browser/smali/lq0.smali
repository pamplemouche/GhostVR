.class public final enum Llq0;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:Llq0;

.field public static final enum B:Llq0;

.field public static final synthetic C:[Llq0;

.field public static final enum x:Llq0;

.field public static final enum y:Llq0;

.field public static final enum z:Llq0;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Llq0;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Llq0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Llq0;->x:Llq0;

    .line 2
    new-instance v0, Llq0;

    const/4 v2, 0x1

    const-string v3, "GSM"

    invoke-direct {v0, v3, v2, v2}, Llq0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Llq0;->y:Llq0;

    .line 3
    new-instance v0, Llq0;

    const/4 v3, 0x2

    const-string v4, "LTE"

    invoke-direct {v0, v4, v3, v3}, Llq0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Llq0;->z:Llq0;

    .line 4
    new-instance v0, Llq0;

    const/4 v4, 0x3

    const-string v5, "CDMA"

    invoke-direct {v0, v5, v4, v4}, Llq0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Llq0;->A:Llq0;

    .line 5
    new-instance v0, Llq0;

    const/4 v5, 0x4

    const-string v6, "WCDMA"

    invoke-direct {v0, v6, v5, v5}, Llq0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Llq0;->B:Llq0;

    const/4 v6, 0x5

    new-array v6, v6, [Llq0;

    .line 6
    sget-object v7, Llq0;->x:Llq0;

    aput-object v7, v6, v1

    sget-object v1, Llq0;->y:Llq0;

    aput-object v1, v6, v2

    sget-object v1, Llq0;->z:Llq0;

    aput-object v1, v6, v3

    sget-object v1, Llq0;->A:Llq0;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Llq0;->C:[Llq0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Llq0;->w:I

    return-void
.end method

.method public static a(I)Llq0;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Llq0;->B:Llq0;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Llq0;->A:Llq0;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Llq0;->z:Llq0;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Llq0;->y:Llq0;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Llq0;->x:Llq0;

    return-object p0
.end method

.method public static values()[Llq0;
    .locals 1

    .line 1
    sget-object v0, Llq0;->C:[Llq0;

    invoke-virtual {v0}, [Llq0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llq0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Llq0;->w:I

    return v0
.end method
