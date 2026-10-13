.class public final enum Liq0;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum x:Liq0;

.field public static final enum y:Liq0;

.field public static final synthetic z:[Liq0;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Liq0;

    const-string v1, "UNKNOWN_ROLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Liq0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Liq0;->x:Liq0;

    .line 2
    new-instance v0, Liq0;

    const-string v1, "CURRENT_LOCATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Liq0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Liq0;->y:Liq0;

    const/4 v1, 0x2

    new-array v1, v1, [Liq0;

    .line 3
    sget-object v4, Liq0;->x:Liq0;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Liq0;->z:[Liq0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Liq0;->w:I

    return-void
.end method

.method public static a(I)Liq0;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Liq0;->y:Liq0;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Liq0;->x:Liq0;

    return-object p0
.end method

.method public static values()[Liq0;
    .locals 1

    .line 1
    sget-object v0, Liq0;->z:[Liq0;

    invoke-virtual {v0}, [Liq0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liq0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Liq0;->w:I

    return v0
.end method
