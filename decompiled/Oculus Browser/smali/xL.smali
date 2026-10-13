.class public final enum LxL;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LxL;

.field public static final enum x:LxL;

.field public static final enum y:LxL;

.field public static final enum z:LxL;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LxL;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const-string v3, "ACTIONS"

    invoke-direct {v0, v3, v2, v1}, LxL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxL;->x:LxL;

    .line 2
    new-instance v0, LxL;

    const/16 v1, 0xf

    const/4 v3, 0x1

    const-string v4, "ACTIONS_BINDING"

    invoke-direct {v0, v4, v3, v1}, LxL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxL;->y:LxL;

    .line 3
    new-instance v0, LxL;

    const/4 v1, 0x2

    const-string v4, "ACTIONSDATA_NOT_SET"

    invoke-direct {v0, v4, v1, v2}, LxL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxL;->z:LxL;

    const/4 v4, 0x3

    new-array v4, v4, [LxL;

    .line 4
    sget-object v5, LxL;->x:LxL;

    aput-object v5, v4, v2

    sget-object v2, LxL;->y:LxL;

    aput-object v2, v4, v3

    aput-object v0, v4, v1

    sput-object v4, LxL;->A:[LxL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LxL;->w:I

    return-void
.end method

.method public static a(I)LxL;
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LxL;->y:LxL;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LxL;->x:LxL;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LxL;->z:LxL;

    return-object p0
.end method

.method public static values()[LxL;
    .locals 1

    .line 1
    sget-object v0, LxL;->A:[LxL;

    invoke-virtual {v0}, [LxL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LxL;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LxL;->w:I

    return v0
.end method
