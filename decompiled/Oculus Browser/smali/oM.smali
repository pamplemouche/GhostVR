.class public final enum LoM;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LoM;

.field public static final enum B:LoM;

.field public static final synthetic C:[LoM;

.field public static final enum x:LoM;

.field public static final enum y:LoM;

.field public static final enum z:LoM;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LoM;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "CHUNKED_TEXT"

    invoke-direct {v0, v3, v2, v1}, LoM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LoM;->x:LoM;

    .line 2
    new-instance v0, LoM;

    const/4 v3, 0x1

    const/4 v4, 0x4

    const-string v5, "CHUNKED_TEXT_BINDING"

    invoke-direct {v0, v5, v3, v4}, LoM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LoM;->y:LoM;

    .line 3
    new-instance v0, LoM;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "PARAMETERIZED_TEXT"

    invoke-direct {v0, v7, v6, v5}, LoM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LoM;->z:LoM;

    .line 4
    new-instance v0, LoM;

    const-string v7, "PARAMETERIZED_TEXT_BINDING"

    invoke-direct {v0, v7, v5, v6}, LoM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LoM;->A:LoM;

    .line 5
    new-instance v0, LoM;

    const-string v7, "CONTENT_NOT_SET"

    invoke-direct {v0, v7, v4, v2}, LoM;-><init>(Ljava/lang/String;II)V

    sput-object v0, LoM;->B:LoM;

    new-array v1, v1, [LoM;

    .line 6
    sget-object v7, LoM;->x:LoM;

    aput-object v7, v1, v2

    sget-object v2, LoM;->y:LoM;

    aput-object v2, v1, v3

    sget-object v2, LoM;->z:LoM;

    aput-object v2, v1, v6

    sget-object v2, LoM;->A:LoM;

    aput-object v2, v1, v5

    aput-object v0, v1, v4

    sput-object v1, LoM;->C:[LoM;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LoM;->w:I

    return-void
.end method

.method public static a(I)LoM;
    .locals 1

    if-eqz p0, :cond_4

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
    sget-object p0, LoM;->x:LoM;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LoM;->y:LoM;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LoM;->z:LoM;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, LoM;->A:LoM;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, LoM;->B:LoM;

    return-object p0
.end method

.method public static values()[LoM;
    .locals 1

    .line 1
    sget-object v0, LoM;->C:[LoM;

    invoke-virtual {v0}, [LoM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LoM;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 6
    iget v0, p0, LoM;->w:I

    return v0
.end method
