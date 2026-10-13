.class public final enum LnO;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LnO;

.field public static final enum x:LnO;

.field public static final enum y:LnO;

.field public static final enum z:LnO;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LnO;

    const/4 v1, 0x0

    const-string v2, "RELATIVE_SIZE_UNDEFINED"

    invoke-direct {v0, v2, v1, v1}, LnO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnO;->x:LnO;

    .line 2
    new-instance v0, LnO;

    const/4 v2, 0x1

    const-string v3, "FIT_CONTENT"

    invoke-direct {v0, v3, v2, v2}, LnO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnO;->y:LnO;

    .line 3
    new-instance v0, LnO;

    const/4 v3, 0x2

    const-string v4, "FILL_PARENT"

    invoke-direct {v0, v4, v3, v3}, LnO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnO;->z:LnO;

    const/4 v4, 0x3

    new-array v4, v4, [LnO;

    .line 4
    sget-object v5, LnO;->x:LnO;

    aput-object v5, v4, v1

    sget-object v1, LnO;->y:LnO;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, LnO;->A:[LnO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LnO;->w:I

    return-void
.end method

.method public static a(I)LnO;
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
    sget-object p0, LnO;->z:LnO;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LnO;->y:LnO;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LnO;->x:LnO;

    return-object p0
.end method

.method public static values()[LnO;
    .locals 1

    .line 1
    sget-object v0, LnO;->A:[LnO;

    invoke-virtual {v0}, [LnO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LnO;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LnO;->w:I

    return v0
.end method
