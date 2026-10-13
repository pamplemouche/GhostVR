.class public final enum LaJ;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LaJ;

.field public static final enum B:LaJ;

.field public static final synthetic C:[LaJ;

.field public static final enum x:LaJ;

.field public static final enum y:LaJ;

.field public static final enum z:LaJ;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LaJ;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, LaJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaJ;->x:LaJ;

    .line 2
    new-instance v0, LaJ;

    const/4 v2, 0x1

    const-string v3, "CLEAR_ALL"

    invoke-direct {v0, v3, v2, v2}, LaJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaJ;->y:LaJ;

    .line 3
    new-instance v0, LaJ;

    const/4 v3, 0x2

    const-string v4, "UPDATE_OR_APPEND"

    invoke-direct {v0, v4, v3, v3}, LaJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaJ;->z:LaJ;

    .line 4
    new-instance v0, LaJ;

    const/4 v4, 0x3

    const-string v5, "REMOVE"

    invoke-direct {v0, v5, v4, v4}, LaJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaJ;->A:LaJ;

    .line 5
    new-instance v0, LaJ;

    const/4 v5, 0x4

    const-string v6, "REQUIRED_CONTENT"

    invoke-direct {v0, v6, v5, v5}, LaJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaJ;->B:LaJ;

    const/4 v6, 0x5

    new-array v6, v6, [LaJ;

    .line 6
    sget-object v7, LaJ;->x:LaJ;

    aput-object v7, v6, v1

    sget-object v1, LaJ;->y:LaJ;

    aput-object v1, v6, v2

    sget-object v1, LaJ;->z:LaJ;

    aput-object v1, v6, v3

    sget-object v1, LaJ;->A:LaJ;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, LaJ;->C:[LaJ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LaJ;->w:I

    return-void
.end method

.method public static a(I)LaJ;
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

    .line 2
    :cond_0
    sget-object p0, LaJ;->B:LaJ;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LaJ;->A:LaJ;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, LaJ;->z:LaJ;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, LaJ;->y:LaJ;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, LaJ;->x:LaJ;

    return-object p0
.end method

.method public static values()[LaJ;
    .locals 1

    .line 1
    sget-object v0, LaJ;->C:[LaJ;

    invoke-virtual {v0}, [LaJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaJ;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LaJ;->w:I

    return v0
.end method
