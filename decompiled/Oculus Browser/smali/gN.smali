.class public final enum LgN;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LgN;

.field public static final enum x:LgN;

.field public static final enum y:LgN;

.field public static final enum z:LgN;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LgN;

    const/4 v1, 0x0

    const-string v2, "UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, LgN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LgN;->x:LgN;

    .line 2
    new-instance v0, LgN;

    const/4 v2, 0x1

    const-string v3, "PORTRAIT"

    invoke-direct {v0, v3, v2, v2}, LgN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LgN;->y:LgN;

    .line 3
    new-instance v0, LgN;

    const/4 v3, 0x2

    const-string v4, "LANDSCAPE"

    invoke-direct {v0, v4, v3, v3}, LgN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LgN;->z:LgN;

    const/4 v4, 0x3

    new-array v4, v4, [LgN;

    .line 4
    sget-object v5, LgN;->x:LgN;

    aput-object v5, v4, v1

    sget-object v1, LgN;->y:LgN;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, LgN;->A:[LgN;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LgN;->w:I

    return-void
.end method

.method public static a(I)LgN;
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
    sget-object p0, LgN;->z:LgN;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LgN;->y:LgN;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LgN;->x:LgN;

    return-object p0
.end method

.method public static values()[LgN;
    .locals 1

    .line 1
    sget-object v0, LgN;->A:[LgN;

    invoke-virtual {v0}, [LgN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LgN;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LgN;->w:I

    return v0
.end method
