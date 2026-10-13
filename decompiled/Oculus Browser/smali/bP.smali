.class public final enum LbP;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LbP;

.field public static final enum x:LbP;

.field public static final enum y:LbP;

.field public static final enum z:LbP;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LbP;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "PARAMETERIZED_TEXT_BINDING"

    invoke-direct {v0, v3, v2, v1}, LbP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbP;->x:LbP;

    .line 2
    new-instance v0, LbP;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "PARAMETERIZED_TEXT"

    invoke-direct {v0, v5, v4, v3}, LbP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbP;->y:LbP;

    .line 3
    new-instance v0, LbP;

    const-string v5, "CONTENT_NOT_SET"

    invoke-direct {v0, v5, v1, v2}, LbP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbP;->z:LbP;

    new-array v3, v3, [LbP;

    .line 4
    sget-object v5, LbP;->x:LbP;

    aput-object v5, v3, v2

    sget-object v2, LbP;->y:LbP;

    aput-object v2, v3, v4

    aput-object v0, v3, v1

    sput-object v3, LbP;->A:[LbP;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LbP;->w:I

    return-void
.end method

.method public static a(I)LbP;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LbP;->y:LbP;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LbP;->x:LbP;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LbP;->z:LbP;

    return-object p0
.end method

.method public static values()[LbP;
    .locals 1

    .line 1
    sget-object v0, LbP;->A:[LbP;

    invoke-virtual {v0}, [LbP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LbP;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LbP;->w:I

    return v0
.end method
