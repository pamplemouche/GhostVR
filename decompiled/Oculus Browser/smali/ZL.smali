.class public final enum LZL;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LZL;

.field public static final enum x:LZL;

.field public static final enum y:LZL;

.field public static final enum z:LZL;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LZL;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "IMAGE"

    invoke-direct {v0, v3, v2, v1}, LZL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LZL;->x:LZL;

    .line 2
    new-instance v0, LZL;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "IMAGE_BINDING"

    invoke-direct {v0, v5, v3, v4}, LZL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LZL;->y:LZL;

    .line 3
    new-instance v0, LZL;

    const-string v5, "CONTENT_NOT_SET"

    invoke-direct {v0, v5, v4, v2}, LZL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LZL;->z:LZL;

    new-array v1, v1, [LZL;

    .line 4
    sget-object v5, LZL;->x:LZL;

    aput-object v5, v1, v2

    sget-object v2, LZL;->y:LZL;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, LZL;->A:[LZL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LZL;->w:I

    return-void
.end method

.method public static a(I)LZL;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LZL;->x:LZL;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LZL;->y:LZL;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LZL;->z:LZL;

    return-object p0
.end method

.method public static values()[LZL;
    .locals 1

    .line 1
    sget-object v0, LZL;->A:[LZL;

    invoke-virtual {v0}, [LZL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZL;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LZL;->w:I

    return v0
.end method
