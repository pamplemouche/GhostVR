.class public final enum LrM;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LrM;

.field public static final synthetic B:[LrM;

.field public static final enum x:LrM;

.field public static final enum y:LrM;

.field public static final enum z:LrM;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LrM;

    const/4 v1, 0x0

    const-string v2, "VISIBILITY_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, LrM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LrM;->x:LrM;

    .line 2
    new-instance v0, LrM;

    const/4 v2, 0x1

    const-string v3, "VISIBLE"

    invoke-direct {v0, v3, v2, v2}, LrM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LrM;->y:LrM;

    .line 3
    new-instance v0, LrM;

    const/4 v3, 0x2

    const-string v4, "INVISIBLE"

    invoke-direct {v0, v4, v3, v3}, LrM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LrM;->z:LrM;

    .line 4
    new-instance v0, LrM;

    const/4 v4, 0x3

    const-string v5, "GONE"

    invoke-direct {v0, v5, v4, v4}, LrM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LrM;->A:LrM;

    const/4 v5, 0x4

    new-array v5, v5, [LrM;

    .line 5
    sget-object v6, LrM;->x:LrM;

    aput-object v6, v5, v1

    sget-object v1, LrM;->y:LrM;

    aput-object v1, v5, v2

    sget-object v1, LrM;->z:LrM;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, LrM;->B:[LrM;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LrM;->w:I

    return-void
.end method

.method public static a(I)LrM;
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
    sget-object p0, LrM;->A:LrM;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LrM;->z:LrM;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LrM;->y:LrM;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, LrM;->x:LrM;

    return-object p0
.end method

.method public static values()[LrM;
    .locals 1

    .line 1
    sget-object v0, LrM;->B:[LrM;

    invoke-virtual {v0}, [LrM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LrM;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LrM;->w:I

    return v0
.end method
