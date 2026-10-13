.class public final enum LIM;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LIM;

.field public static final enum x:LIM;

.field public static final enum y:LIM;

.field public static final enum z:LIM;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LIM;

    const/4 v1, 0x0

    const-string v2, "SCALE_TYPE_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, LIM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LIM;->x:LIM;

    .line 2
    new-instance v0, LIM;

    const/4 v2, 0x1

    const-string v3, "CENTER_INSIDE"

    invoke-direct {v0, v3, v2, v2}, LIM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LIM;->y:LIM;

    .line 3
    new-instance v0, LIM;

    const/4 v3, 0x2

    const-string v4, "CENTER_CROP"

    invoke-direct {v0, v4, v3, v3}, LIM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LIM;->z:LIM;

    const/4 v4, 0x3

    new-array v4, v4, [LIM;

    .line 4
    sget-object v5, LIM;->x:LIM;

    aput-object v5, v4, v1

    sget-object v1, LIM;->y:LIM;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, LIM;->A:[LIM;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LIM;->w:I

    return-void
.end method

.method public static a(I)LIM;
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
    sget-object p0, LIM;->z:LIM;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LIM;->y:LIM;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LIM;->x:LIM;

    return-object p0
.end method

.method public static values()[LIM;
    .locals 1

    .line 1
    sget-object v0, LIM;->A:[LIM;

    invoke-virtual {v0}, [LIM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LIM;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LIM;->w:I

    return v0
.end method
