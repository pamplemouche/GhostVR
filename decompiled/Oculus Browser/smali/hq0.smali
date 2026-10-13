.class public final enum Lhq0;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum x:Lhq0;

.field public static final enum y:Lhq0;

.field public static final synthetic z:[Lhq0;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lhq0;

    const-string v1, "UNKNOWN_PRODUCER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lhq0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhq0;->x:Lhq0;

    .line 2
    new-instance v0, Lhq0;

    const-string v1, "DEVICE_LOCATION"

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lhq0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhq0;->y:Lhq0;

    const/4 v1, 0x2

    new-array v1, v1, [Lhq0;

    .line 3
    sget-object v3, Lhq0;->x:Lhq0;

    aput-object v3, v1, v2

    aput-object v0, v1, v4

    sput-object v1, Lhq0;->z:[Lhq0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lhq0;->w:I

    return-void
.end method

.method public static a(I)Lhq0;
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lhq0;->y:Lhq0;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lhq0;->x:Lhq0;

    return-object p0
.end method

.method public static values()[Lhq0;
    .locals 1

    .line 1
    sget-object v0, Lhq0;->z:[Lhq0;

    invoke-virtual {v0}, [Lhq0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhq0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lhq0;->w:I

    return v0
.end method
