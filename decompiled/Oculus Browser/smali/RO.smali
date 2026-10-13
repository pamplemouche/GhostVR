.class public final enum LRO;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LRO;

.field public static final enum x:LRO;

.field public static final enum y:LRO;

.field public static final enum z:LRO;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LRO;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "TIMESTAMP_SECONDS"

    invoke-direct {v0, v3, v2, v1}, LRO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LRO;->x:LRO;

    .line 2
    new-instance v0, LRO;

    const/4 v3, 0x2

    const-string v4, "LOCATION"

    invoke-direct {v0, v4, v1, v3}, LRO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LRO;->y:LRO;

    .line 3
    new-instance v0, LRO;

    const-string v4, "PARAMETERTYPES_NOT_SET"

    invoke-direct {v0, v4, v3, v2}, LRO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LRO;->z:LRO;

    const/4 v4, 0x3

    new-array v4, v4, [LRO;

    .line 4
    sget-object v5, LRO;->x:LRO;

    aput-object v5, v4, v2

    sget-object v2, LRO;->y:LRO;

    aput-object v2, v4, v1

    aput-object v0, v4, v3

    sput-object v4, LRO;->A:[LRO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LRO;->w:I

    return-void
.end method

.method public static a(I)LRO;
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
    sget-object p0, LRO;->y:LRO;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LRO;->x:LRO;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LRO;->z:LRO;

    return-object p0
.end method

.method public static values()[LRO;
    .locals 1

    .line 1
    sget-object v0, LRO;->A:[LRO;

    invoke-virtual {v0}, [LRO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LRO;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LRO;->w:I

    return v0
.end method
