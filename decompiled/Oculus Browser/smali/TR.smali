.class public final enum LTR;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LTR;

.field public static final enum B:LTR;

.field public static final synthetic C:[LTR;

.field public static final enum x:LTR;

.field public static final enum y:LTR;

.field public static final enum z:LTR;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LTR;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_BUILD_TYPE"

    invoke-direct {v0, v2, v1, v1}, LTR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LTR;->x:LTR;

    .line 2
    new-instance v0, LTR;

    const/4 v2, 0x1

    const-string v3, "DEV"

    invoke-direct {v0, v3, v2, v2}, LTR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LTR;->y:LTR;

    .line 3
    new-instance v0, LTR;

    const/4 v3, 0x2

    const-string v4, "ALPHA"

    invoke-direct {v0, v4, v3, v3}, LTR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LTR;->z:LTR;

    .line 4
    new-instance v0, LTR;

    const/4 v4, 0x3

    const-string v5, "BETA"

    invoke-direct {v0, v5, v4, v4}, LTR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LTR;->A:LTR;

    .line 5
    new-instance v0, LTR;

    const/4 v5, 0x4

    const-string v6, "RELEASE"

    invoke-direct {v0, v6, v5, v5}, LTR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LTR;->B:LTR;

    const/4 v6, 0x5

    new-array v6, v6, [LTR;

    .line 6
    sget-object v7, LTR;->x:LTR;

    aput-object v7, v6, v1

    sget-object v1, LTR;->y:LTR;

    aput-object v1, v6, v2

    sget-object v1, LTR;->z:LTR;

    aput-object v1, v6, v3

    sget-object v1, LTR;->A:LTR;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, LTR;->C:[LTR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LTR;->w:I

    return-void
.end method

.method public static a(I)LTR;
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
    sget-object p0, LTR;->B:LTR;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LTR;->A:LTR;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LTR;->z:LTR;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, LTR;->y:LTR;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, LTR;->x:LTR;

    return-object p0
.end method

.method public static values()[LTR;
    .locals 1

    .line 1
    sget-object v0, LTR;->C:[LTR;

    invoke-virtual {v0}, [LTR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LTR;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LTR;->w:I

    return v0
.end method
