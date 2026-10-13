.class public final enum LOL;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum x:LOL;

.field public static final enum y:LOL;

.field public static final synthetic z:[LOL;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LOL;

    const-string v1, "INVALID_CONTENT_WIDTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LOL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LOL;->x:LOL;

    .line 2
    new-instance v0, LOL;

    const-string v1, "CONTENT_WIDTH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, LOL;-><init>(Ljava/lang/String;II)V

    sput-object v0, LOL;->y:LOL;

    const/4 v1, 0x2

    new-array v1, v1, [LOL;

    .line 3
    sget-object v4, LOL;->x:LOL;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, LOL;->z:[LOL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LOL;->w:I

    return-void
.end method

.method public static a(I)LOL;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, LOL;->y:LOL;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LOL;->x:LOL;

    return-object p0
.end method

.method public static values()[LOL;
    .locals 1

    .line 1
    sget-object v0, LOL;->z:[LOL;

    invoke-virtual {v0}, [LOL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOL;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LOL;->w:I

    return v0
.end method
