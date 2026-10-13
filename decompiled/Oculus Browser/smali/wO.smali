.class public final enum LwO;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LwO;

.field public static final synthetic B:[LwO;

.field public static final enum x:LwO;

.field public static final enum y:LwO;

.field public static final enum z:LwO;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LwO;

    const/4 v1, 0x0

    const-string v2, "TEXT_ALIGNMENT_HORIZONTAL_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, LwO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LwO;->x:LwO;

    .line 2
    new-instance v0, LwO;

    const/4 v2, 0x1

    const-string v3, "TEXT_ALIGNMENT_START"

    invoke-direct {v0, v3, v2, v2}, LwO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LwO;->y:LwO;

    .line 3
    new-instance v0, LwO;

    const/4 v3, 0x2

    const-string v4, "TEXT_ALIGNMENT_END"

    invoke-direct {v0, v4, v3, v3}, LwO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LwO;->z:LwO;

    .line 4
    new-instance v0, LwO;

    const/4 v4, 0x3

    const-string v5, "TEXT_ALIGNMENT_CENTER"

    invoke-direct {v0, v5, v4, v4}, LwO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LwO;->A:LwO;

    const/4 v5, 0x4

    new-array v5, v5, [LwO;

    .line 5
    sget-object v6, LwO;->x:LwO;

    aput-object v6, v5, v1

    sget-object v1, LwO;->y:LwO;

    aput-object v1, v5, v2

    sget-object v1, LwO;->z:LwO;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, LwO;->B:[LwO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LwO;->w:I

    return-void
.end method

.method public static a(I)LwO;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, LwO;->A:LwO;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LwO;->z:LwO;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LwO;->y:LwO;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, LwO;->x:LwO;

    return-object p0
.end method

.method public static values()[LwO;
    .locals 1

    .line 1
    sget-object v0, LwO;->B:[LwO;

    invoke-virtual {v0}, [LwO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LwO;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LwO;->w:I

    return v0
.end method
