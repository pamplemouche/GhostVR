.class public final enum LyN;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LyN;

.field public static final enum x:LyN;

.field public static final enum y:LyN;

.field public static final enum z:LyN;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LyN;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "STYLESHEET_ID"

    invoke-direct {v0, v3, v2, v1}, LyN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyN;->x:LyN;

    .line 2
    new-instance v0, LyN;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "STYLESHEET"

    invoke-direct {v0, v5, v4, v3}, LyN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyN;->y:LyN;

    .line 3
    new-instance v0, LyN;

    const-string v5, "TEMPLATESTYLESHEET_NOT_SET"

    invoke-direct {v0, v5, v1, v2}, LyN;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyN;->z:LyN;

    new-array v3, v3, [LyN;

    .line 4
    sget-object v5, LyN;->x:LyN;

    aput-object v5, v3, v2

    sget-object v2, LyN;->y:LyN;

    aput-object v2, v3, v4

    aput-object v0, v3, v1

    sput-object v3, LyN;->A:[LyN;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LyN;->w:I

    return-void
.end method

.method public static a(I)LyN;
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
    sget-object p0, LyN;->y:LyN;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LyN;->x:LyN;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LyN;->z:LyN;

    return-object p0
.end method

.method public static values()[LyN;
    .locals 1

    .line 1
    sget-object v0, LyN;->A:[LyN;

    invoke-virtual {v0}, [LyN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LyN;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LyN;->w:I

    return v0
.end method
