.class public final enum LzO;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LzO;

.field public static final enum B:LzO;

.field public static final enum C:LzO;

.field public static final synthetic D:[LzO;

.field public static final enum x:LzO;

.field public static final enum y:LzO;

.field public static final enum z:LzO;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, LzO;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2, v1, v1}, LzO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzO;->x:LzO;

    .line 2
    new-instance v0, LzO;

    const/4 v2, 0x1

    const-string v3, "PLATFORM_DEFAULT_LIGHT"

    invoke-direct {v0, v3, v2, v2}, LzO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzO;->y:LzO;

    .line 3
    new-instance v0, LzO;

    const/4 v3, 0x2

    const-string v4, "PLATFORM_DEFAULT_REGULAR"

    invoke-direct {v0, v4, v3, v3}, LzO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzO;->z:LzO;

    .line 4
    new-instance v0, LzO;

    const/4 v4, 0x3

    const-string v5, "PLATFORM_DEFAULT_MEDIUM"

    invoke-direct {v0, v5, v4, v4}, LzO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzO;->A:LzO;

    .line 5
    new-instance v0, LzO;

    const/4 v5, 0x4

    const-string v6, "GOOGLE_SANS_REGULAR"

    invoke-direct {v0, v6, v5, v5}, LzO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzO;->B:LzO;

    .line 6
    new-instance v0, LzO;

    const/4 v6, 0x5

    const-string v7, "GOOGLE_SANS_MEDIUM"

    invoke-direct {v0, v7, v6, v6}, LzO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzO;->C:LzO;

    const/4 v7, 0x6

    new-array v7, v7, [LzO;

    .line 7
    sget-object v8, LzO;->x:LzO;

    aput-object v8, v7, v1

    sget-object v1, LzO;->y:LzO;

    aput-object v1, v7, v2

    sget-object v1, LzO;->z:LzO;

    aput-object v1, v7, v3

    sget-object v1, LzO;->A:LzO;

    aput-object v1, v7, v4

    sget-object v1, LzO;->B:LzO;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, LzO;->D:[LzO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LzO;->w:I

    return-void
.end method

.method public static a(I)LzO;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, LzO;->C:LzO;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LzO;->B:LzO;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LzO;->A:LzO;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, LzO;->z:LzO;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, LzO;->y:LzO;

    return-object p0

    .line 7
    :cond_5
    sget-object p0, LzO;->x:LzO;

    return-object p0
.end method

.method public static values()[LzO;
    .locals 1

    .line 1
    sget-object v0, LzO;->D:[LzO;

    invoke-virtual {v0}, [LzO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LzO;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LzO;->w:I

    return v0
.end method
