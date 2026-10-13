.class public final enum LWI;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum x:LWI;

.field public static final enum y:LWI;

.field public static final synthetic z:[LWI;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LWI;

    const-string v1, "PIET_SHARED_STATE_ITEM"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, LWI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWI;->x:LWI;

    .line 2
    new-instance v0, LWI;

    const-string v1, "SHARESTATE_NOT_SET"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, LWI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWI;->y:LWI;

    new-array v1, v2, [LWI;

    .line 3
    sget-object v2, LWI;->x:LWI;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, LWI;->z:[LWI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LWI;->w:I

    return-void
.end method

.method public static a(I)LWI;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LWI;->x:LWI;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LWI;->y:LWI;

    return-object p0
.end method

.method public static values()[LWI;
    .locals 1

    .line 1
    sget-object v0, LWI;->z:[LWI;

    invoke-virtual {v0}, [LWI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LWI;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, LWI;->w:I

    return v0
.end method
