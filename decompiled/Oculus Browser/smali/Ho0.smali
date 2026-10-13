.class public final enum LHo0;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LHo0;

.field public static final enum x:LHo0;

.field public static final enum y:LHo0;

.field public static final enum z:LHo0;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LHo0;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "UNKNOWN_TYPE"

    invoke-direct {v0, v3, v2, v1}, LHo0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHo0;->x:LHo0;

    .line 2
    new-instance v0, LHo0;

    const/4 v1, 0x1

    const-string v3, "INTENT"

    invoke-direct {v0, v3, v1, v2}, LHo0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHo0;->y:LHo0;

    .line 3
    new-instance v0, LHo0;

    const/4 v3, 0x2

    const-string v4, "INLINE"

    invoke-direct {v0, v4, v3, v1}, LHo0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHo0;->z:LHo0;

    const/4 v4, 0x3

    new-array v4, v4, [LHo0;

    .line 4
    sget-object v5, LHo0;->x:LHo0;

    aput-object v5, v4, v2

    sget-object v2, LHo0;->y:LHo0;

    aput-object v2, v4, v1

    aput-object v0, v4, v3

    sput-object v4, LHo0;->A:[LHo0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LHo0;->w:I

    return-void
.end method

.method public static a(I)LHo0;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, LHo0;->z:LHo0;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LHo0;->y:LHo0;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LHo0;->x:LHo0;

    return-object p0
.end method

.method public static values()[LHo0;
    .locals 1

    .line 1
    sget-object v0, LHo0;->A:[LHo0;

    invoke-virtual {v0}, [LHo0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHo0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LHo0;->w:I

    return v0
.end method
