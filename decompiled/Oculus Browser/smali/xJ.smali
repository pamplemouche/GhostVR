.class public final enum LxJ;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LxJ;

.field public static final enum B:LxJ;

.field public static final enum C:LxJ;

.field public static final synthetic D:[LxJ;

.field public static final enum x:LxJ;

.field public static final enum y:LxJ;

.field public static final enum z:LxJ;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, LxJ;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "OPEN_URL_DATA"

    invoke-direct {v0, v3, v2, v1}, LxJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxJ;->x:LxJ;

    .line 2
    new-instance v0, LxJ;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const-string v5, "OPEN_CONTEXT_MENU_DATA"

    invoke-direct {v0, v5, v3, v4}, LxJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxJ;->y:LxJ;

    .line 3
    new-instance v0, LxJ;

    const/4 v5, 0x4

    const-string v6, "DISMISS_DATA"

    invoke-direct {v0, v6, v1, v5}, LxJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxJ;->z:LxJ;

    .line 4
    new-instance v0, LxJ;

    const/4 v6, 0x6

    const-string v7, "NOT_INTERESTED_IN_DATA"

    invoke-direct {v0, v7, v4, v6}, LxJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxJ;->A:LxJ;

    .line 5
    new-instance v0, LxJ;

    const/16 v7, 0x8

    const-string v8, "TOOLTIP_DATA"

    invoke-direct {v0, v8, v5, v7}, LxJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxJ;->B:LxJ;

    .line 6
    new-instance v0, LxJ;

    const/4 v7, 0x5

    const-string v8, "DATA_NOT_SET"

    invoke-direct {v0, v8, v7, v2}, LxJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxJ;->C:LxJ;

    new-array v6, v6, [LxJ;

    .line 7
    sget-object v8, LxJ;->x:LxJ;

    aput-object v8, v6, v2

    sget-object v2, LxJ;->y:LxJ;

    aput-object v2, v6, v3

    sget-object v2, LxJ;->z:LxJ;

    aput-object v2, v6, v1

    sget-object v1, LxJ;->A:LxJ;

    aput-object v1, v6, v4

    sget-object v1, LxJ;->B:LxJ;

    aput-object v1, v6, v5

    aput-object v0, v6, v7

    sput-object v6, LxJ;->D:[LxJ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LxJ;->w:I

    return-void
.end method

.method public static a(I)LxJ;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LxJ;->z:LxJ;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LxJ;->y:LxJ;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LxJ;->x:LxJ;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, LxJ;->B:LxJ;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, LxJ;->A:LxJ;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, LxJ;->C:LxJ;

    return-object p0
.end method

.method public static values()[LxJ;
    .locals 1

    .line 1
    sget-object v0, LxJ;->D:[LxJ;

    invoke-virtual {v0}, [LxJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LxJ;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 7
    iget v0, p0, LxJ;->w:I

    return v0
.end method
