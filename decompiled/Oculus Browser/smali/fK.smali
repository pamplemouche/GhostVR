.class public final enum LfK;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LfK;

.field public static final enum x:LfK;

.field public static final enum y:LfK;

.field public static final enum z:LfK;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LfK;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "DESCRIPTION"

    invoke-direct {v0, v3, v2, v1}, LfK;-><init>(Ljava/lang/String;II)V

    sput-object v0, LfK;->x:LfK;

    .line 2
    new-instance v0, LfK;

    const/4 v3, 0x3

    const-string v4, "DESCRIPTION_BINDING"

    invoke-direct {v0, v4, v1, v3}, LfK;-><init>(Ljava/lang/String;II)V

    sput-object v0, LfK;->y:LfK;

    .line 3
    new-instance v0, LfK;

    const/4 v4, 0x2

    const-string v5, "DESCRIPTIONDATA_NOT_SET"

    invoke-direct {v0, v5, v4, v2}, LfK;-><init>(Ljava/lang/String;II)V

    sput-object v0, LfK;->z:LfK;

    new-array v3, v3, [LfK;

    .line 4
    sget-object v5, LfK;->x:LfK;

    aput-object v5, v3, v2

    sget-object v2, LfK;->y:LfK;

    aput-object v2, v3, v1

    aput-object v0, v3, v4

    sput-object v3, LfK;->A:[LfK;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LfK;->w:I

    return-void
.end method

.method public static a(I)LfK;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LfK;->y:LfK;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LfK;->x:LfK;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LfK;->z:LfK;

    return-object p0
.end method

.method public static values()[LfK;
    .locals 1

    .line 1
    sget-object v0, LfK;->A:[LfK;

    invoke-virtual {v0}, [LfK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LfK;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LfK;->w:I

    return v0
.end method
