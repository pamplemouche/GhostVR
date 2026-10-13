.class public final enum LnQ;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LnQ;

.field public static final synthetic B:[LnQ;

.field public static final enum x:LnQ;

.field public static final enum y:LnQ;

.field public static final enum z:LnQ;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LnQ;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_OPERATION"

    invoke-direct {v0, v2, v1, v1}, LnQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnQ;->x:LnQ;

    .line 2
    new-instance v0, LnQ;

    const/4 v2, 0x1

    const-string v3, "CLEAR_ALL"

    invoke-direct {v0, v3, v2, v2}, LnQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnQ;->y:LnQ;

    .line 3
    new-instance v0, LnQ;

    const/4 v3, 0x2

    const-string v4, "UPDATE_OR_APPEND"

    invoke-direct {v0, v4, v3, v3}, LnQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnQ;->z:LnQ;

    .line 4
    new-instance v0, LnQ;

    const/4 v4, 0x3

    const-string v5, "REMOVE"

    invoke-direct {v0, v5, v4, v4}, LnQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LnQ;->A:LnQ;

    const/4 v5, 0x4

    new-array v5, v5, [LnQ;

    .line 5
    sget-object v6, LnQ;->x:LnQ;

    aput-object v6, v5, v1

    sget-object v1, LnQ;->y:LnQ;

    aput-object v1, v5, v2

    sget-object v1, LnQ;->z:LnQ;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, LnQ;->B:[LnQ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LnQ;->w:I

    return-void
.end method

.method public static a(I)LnQ;
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
    sget-object p0, LnQ;->A:LnQ;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LnQ;->z:LnQ;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LnQ;->y:LnQ;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, LnQ;->x:LnQ;

    return-object p0
.end method

.method public static values()[LnQ;
    .locals 1

    .line 1
    sget-object v0, LnQ;->B:[LnQ;

    invoke-virtual {v0}, [LnQ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LnQ;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LnQ;->w:I

    return v0
.end method
