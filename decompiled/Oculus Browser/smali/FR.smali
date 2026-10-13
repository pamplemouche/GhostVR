.class public final enum LFR;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum x:LFR;

.field public static final enum y:LFR;

.field public static final synthetic z:[LFR;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LFR;

    const-string v1, "UNKNOWN_RESPONSE_VERSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFR;->x:LFR;

    .line 2
    new-instance v0, LFR;

    const-string v1, "FEED_RESPONSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, LFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFR;->y:LFR;

    const/4 v1, 0x2

    new-array v1, v1, [LFR;

    .line 3
    sget-object v4, LFR;->x:LFR;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, LFR;->z:[LFR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LFR;->w:I

    return-void
.end method

.method public static a(I)LFR;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, LFR;->y:LFR;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, LFR;->x:LFR;

    return-object p0
.end method

.method public static values()[LFR;
    .locals 1

    .line 1
    sget-object v0, LFR;->z:[LFR;

    invoke-virtual {v0}, [LFR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFR;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LFR;->w:I

    return v0
.end method
