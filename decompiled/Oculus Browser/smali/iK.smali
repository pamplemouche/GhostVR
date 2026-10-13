.class public final enum LiK;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LiK;

.field public static final enum x:LiK;

.field public static final enum y:LiK;

.field public static final enum z:LiK;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LiK;

    const/4 v1, 0x0

    const-string v2, "ACCESSIBILITY_ROLE_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, LiK;-><init>(Ljava/lang/String;II)V

    sput-object v0, LiK;->x:LiK;

    .line 2
    new-instance v0, LiK;

    const/4 v2, 0x1

    const-string v3, "LIST"

    invoke-direct {v0, v3, v2, v2}, LiK;-><init>(Ljava/lang/String;II)V

    sput-object v0, LiK;->y:LiK;

    .line 3
    new-instance v0, LiK;

    const/4 v3, 0x2

    const-string v4, "HEADER"

    invoke-direct {v0, v4, v3, v3}, LiK;-><init>(Ljava/lang/String;II)V

    sput-object v0, LiK;->z:LiK;

    const/4 v4, 0x3

    new-array v4, v4, [LiK;

    .line 4
    sget-object v5, LiK;->x:LiK;

    aput-object v5, v4, v1

    sget-object v1, LiK;->y:LiK;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, LiK;->A:[LiK;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LiK;->w:I

    return-void
.end method

.method public static a(I)LiK;
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
    sget-object p0, LiK;->z:LiK;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LiK;->y:LiK;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LiK;->x:LiK;

    return-object p0
.end method

.method public static values()[LiK;
    .locals 1

    .line 1
    sget-object v0, LiK;->A:[LiK;

    invoke-virtual {v0}, [LiK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LiK;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LiK;->w:I

    return v0
.end method
