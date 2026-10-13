.class public final enum LGO;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final synthetic A:[LGO;

.field public static final enum x:LGO;

.field public static final enum y:LGO;

.field public static final enum z:LGO;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LGO;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "TEXT_CHUNK"

    invoke-direct {v0, v3, v2, v1}, LGO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LGO;->x:LGO;

    .line 2
    new-instance v0, LGO;

    const/4 v3, 0x2

    const-string v4, "IMAGE_CHUNK"

    invoke-direct {v0, v4, v1, v3}, LGO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LGO;->y:LGO;

    .line 3
    new-instance v0, LGO;

    const-string v4, "CONTENT_NOT_SET"

    invoke-direct {v0, v4, v3, v2}, LGO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LGO;->z:LGO;

    const/4 v4, 0x3

    new-array v4, v4, [LGO;

    .line 4
    sget-object v5, LGO;->x:LGO;

    aput-object v5, v4, v2

    sget-object v2, LGO;->y:LGO;

    aput-object v2, v4, v1

    aput-object v0, v4, v3

    sput-object v4, LGO;->A:[LGO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LGO;->w:I

    return-void
.end method

.method public static a(I)LGO;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LGO;->y:LGO;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LGO;->x:LGO;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LGO;->z:LGO;

    return-object p0
.end method

.method public static values()[LGO;
    .locals 1

    .line 1
    sget-object v0, LGO;->A:[LGO;

    invoke-virtual {v0}, [LGO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LGO;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, LGO;->w:I

    return v0
.end method
