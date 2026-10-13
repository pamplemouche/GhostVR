.class public final enum LpO;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LpO;

.field public static final enum x:LpO;

.field public static final enum y:LpO;

.field public static final enum z:LpO;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LpO;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const-string v3, "HEIGHT"

    invoke-direct {v0, v3, v2, v1}, LpO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LpO;->x:LpO;

    .line 2
    new-instance v0, LpO;

    const/16 v1, 0x18

    const/4 v3, 0x1

    const-string v4, "RELATIVE_HEIGHT"

    invoke-direct {v0, v4, v3, v1}, LpO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LpO;->y:LpO;

    .line 3
    new-instance v0, LpO;

    const/4 v1, 0x2

    const-string v4, "HEIGHTSPEC_NOT_SET"

    invoke-direct {v0, v4, v1, v2}, LpO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LpO;->z:LpO;

    const/4 v4, 0x3

    new-array v4, v4, [LpO;

    .line 4
    sget-object v5, LpO;->x:LpO;

    aput-object v5, v4, v2

    sget-object v2, LpO;->y:LpO;

    aput-object v2, v4, v3

    aput-object v0, v4, v1

    sput-object v4, LpO;->A:[LpO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LpO;->w:I

    return-void
.end method

.method public static a(I)LpO;
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LpO;->y:LpO;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LpO;->x:LpO;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LpO;->z:LpO;

    return-object p0
.end method

.method public static values()[LpO;
    .locals 1

    .line 1
    sget-object v0, LpO;->A:[LpO;

    invoke-virtual {v0}, [LpO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LpO;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LpO;->w:I

    return v0
.end method
