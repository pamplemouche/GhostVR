.class public final enum LxS0;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LxS0;

.field public static final enum B:LxS0;

.field public static final enum C:LxS0;

.field public static final synthetic D:[LxS0;

.field public static final enum x:LxS0;

.field public static final enum y:LxS0;

.field public static final enum z:LxS0;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, LxS0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "BOOLEAN_VALUE"

    invoke-direct {v0, v3, v2, v1}, LxS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxS0;->x:LxS0;

    .line 2
    new-instance v0, LxS0;

    const/4 v3, 0x2

    const-string v4, "DOUBLE_VALUE"

    invoke-direct {v0, v4, v1, v3}, LxS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxS0;->y:LxS0;

    .line 3
    new-instance v0, LxS0;

    const/4 v4, 0x3

    const-string v5, "INT_VALUE"

    invoke-direct {v0, v5, v3, v4}, LxS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxS0;->z:LxS0;

    .line 4
    new-instance v0, LxS0;

    const/4 v5, 0x4

    const-string v6, "LONG_VALUE"

    invoke-direct {v0, v6, v4, v5}, LxS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxS0;->A:LxS0;

    .line 5
    new-instance v0, LxS0;

    const/4 v6, 0x5

    const-string v7, "STRING_VALUE"

    invoke-direct {v0, v7, v5, v6}, LxS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxS0;->B:LxS0;

    .line 6
    new-instance v0, LxS0;

    const-string v7, "ONEOFVALUE_NOT_SET"

    invoke-direct {v0, v7, v6, v2}, LxS0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxS0;->C:LxS0;

    const/4 v7, 0x6

    new-array v7, v7, [LxS0;

    .line 7
    sget-object v8, LxS0;->x:LxS0;

    aput-object v8, v7, v2

    sget-object v2, LxS0;->y:LxS0;

    aput-object v2, v7, v1

    sget-object v1, LxS0;->z:LxS0;

    aput-object v1, v7, v3

    sget-object v1, LxS0;->A:LxS0;

    aput-object v1, v7, v4

    sget-object v1, LxS0;->B:LxS0;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, LxS0;->D:[LxS0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LxS0;->w:I

    return-void
.end method

.method public static a(I)LxS0;
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

    .line 1
    :cond_0
    sget-object p0, LxS0;->B:LxS0;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LxS0;->A:LxS0;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LxS0;->z:LxS0;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, LxS0;->y:LxS0;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, LxS0;->x:LxS0;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, LxS0;->C:LxS0;

    return-object p0
.end method

.method public static values()[LxS0;
    .locals 1

    .line 1
    sget-object v0, LxS0;->D:[LxS0;

    invoke-virtual {v0}, [LxS0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LxS0;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 7
    iget v0, p0, LxS0;->w:I

    return v0
.end method
