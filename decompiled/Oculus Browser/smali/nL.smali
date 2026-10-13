.class public final enum LnL;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LnL;

.field public static final enum B:LnL;

.field public static final synthetic C:[LnL;

.field public static final enum x:LnL;

.field public static final enum y:LnL;

.field public static final enum z:LnL;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LnL;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ELEMENT"

    invoke-direct {v0, v3, v2, v1}, LnL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnL;->x:LnL;

    .line 2
    new-instance v0, LnL;

    const/4 v3, 0x2

    const-string v4, "BOUND_ELEMENT"

    invoke-direct {v0, v4, v1, v3}, LnL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnL;->y:LnL;

    .line 3
    new-instance v0, LnL;

    const/4 v4, 0x3

    const-string v5, "TEMPLATE_INVOCATION"

    invoke-direct {v0, v5, v3, v4}, LnL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnL;->z:LnL;

    .line 4
    new-instance v0, LnL;

    const/4 v5, 0x4

    const-string v6, "TEMPLATE_BINDING"

    invoke-direct {v0, v6, v4, v5}, LnL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnL;->A:LnL;

    .line 5
    new-instance v0, LnL;

    const-string v6, "CONTENTTYPE_NOT_SET"

    invoke-direct {v0, v6, v5, v2}, LnL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnL;->B:LnL;

    const/4 v6, 0x5

    new-array v6, v6, [LnL;

    .line 6
    sget-object v7, LnL;->x:LnL;

    aput-object v7, v6, v2

    sget-object v2, LnL;->y:LnL;

    aput-object v2, v6, v1

    sget-object v1, LnL;->z:LnL;

    aput-object v1, v6, v3

    sget-object v1, LnL;->A:LnL;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, LnL;->C:[LnL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LnL;->w:I

    return-void
.end method

.method public static a(I)LnL;
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

    .line 1
    :cond_0
    sget-object p0, LnL;->A:LnL;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LnL;->z:LnL;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LnL;->y:LnL;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, LnL;->x:LnL;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, LnL;->B:LnL;

    return-object p0
.end method

.method public static values()[LnL;
    .locals 1

    .line 1
    sget-object v0, LnL;->C:[LnL;

    invoke-virtual {v0}, [LnL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LnL;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 6
    iget v0, p0, LnL;->w:I

    return v0
.end method
