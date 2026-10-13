.class public final enum LzL;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LzL;

.field public static final enum B:LzL;

.field public static final enum C:LzL;

.field public static final enum D:LzL;

.field public static final enum E:LzL;

.field public static final synthetic F:[LzL;

.field public static final enum x:LzL;

.field public static final enum y:LzL;

.field public static final enum z:LzL;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, LzL;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "IMAGE_ELEMENT"

    invoke-direct {v0, v3, v2, v1}, LzL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzL;->x:LzL;

    .line 2
    new-instance v0, LzL;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "TEXT_ELEMENT"

    invoke-direct {v0, v5, v4, v3}, LzL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzL;->y:LzL;

    .line 3
    new-instance v0, LzL;

    const/4 v5, 0x5

    const-string v6, "GRID_ROW"

    invoke-direct {v0, v6, v3, v5}, LzL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzL;->z:LzL;

    .line 4
    new-instance v0, LzL;

    const/4 v6, 0x6

    const-string v7, "ELEMENT_LIST"

    invoke-direct {v0, v7, v1, v6}, LzL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzL;->A:LzL;

    .line 5
    new-instance v0, LzL;

    const/16 v7, 0x18

    const/4 v8, 0x4

    const-string v9, "ELEMENT_STACK"

    invoke-direct {v0, v9, v8, v7}, LzL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzL;->B:LzL;

    .line 6
    new-instance v0, LzL;

    const-string v7, "CUSTOM_ELEMENT"

    invoke-direct {v0, v7, v5, v4}, LzL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzL;->C:LzL;

    .line 7
    new-instance v0, LzL;

    const/16 v7, 0x15

    const-string v9, "MODULE_ELEMENT"

    invoke-direct {v0, v9, v6, v7}, LzL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzL;->D:LzL;

    .line 8
    new-instance v0, LzL;

    const/4 v7, 0x7

    const-string v9, "ELEMENTS_NOT_SET"

    invoke-direct {v0, v9, v7, v2}, LzL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LzL;->E:LzL;

    const/16 v9, 0x8

    new-array v9, v9, [LzL;

    .line 9
    sget-object v10, LzL;->x:LzL;

    aput-object v10, v9, v2

    sget-object v2, LzL;->y:LzL;

    aput-object v2, v9, v4

    sget-object v2, LzL;->z:LzL;

    aput-object v2, v9, v3

    sget-object v2, LzL;->A:LzL;

    aput-object v2, v9, v1

    sget-object v1, LzL;->B:LzL;

    aput-object v1, v9, v8

    sget-object v1, LzL;->C:LzL;

    aput-object v1, v9, v5

    sget-object v1, LzL;->D:LzL;

    aput-object v1, v9, v6

    aput-object v0, v9, v7

    sput-object v9, LzL;->F:[LzL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LzL;->w:I

    return-void
.end method

.method public static a(I)LzL;
    .locals 1

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LzL;->B:LzL;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LzL;->D:LzL;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LzL;->A:LzL;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, LzL;->z:LzL;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, LzL;->x:LzL;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, LzL;->y:LzL;

    return-object p0

    .line 7
    :cond_6
    sget-object p0, LzL;->C:LzL;

    return-object p0

    .line 8
    :cond_7
    sget-object p0, LzL;->E:LzL;

    return-object p0
.end method

.method public static values()[LzL;
    .locals 1

    .line 1
    sget-object v0, LzL;->F:[LzL;

    invoke-virtual {v0}, [LzL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LzL;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 9
    iget v0, p0, LzL;->w:I

    return v0
.end method
