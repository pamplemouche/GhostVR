.class public final enum LMI;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LMI;

.field public static final enum B:LMI;

.field public static final enum C:LMI;

.field public static final enum D:LMI;

.field public static final synthetic E:[LMI;

.field public static final enum x:LMI;

.field public static final enum y:LMI;

.field public static final enum z:LMI;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, LMI;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "STREAM_FEATURE"

    invoke-direct {v0, v3, v2, v1}, LMI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMI;->x:LMI;

    .line 2
    new-instance v0, LMI;

    const/4 v3, 0x1

    const/4 v4, 0x4

    const-string v5, "STREAM_SHARED_STATE"

    invoke-direct {v0, v5, v3, v4}, LMI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMI;->y:LMI;

    .line 3
    new-instance v0, LMI;

    const/4 v5, 0x2

    const/4 v6, 0x5

    const-string v7, "STREAM_TOKEN"

    invoke-direct {v0, v7, v5, v6}, LMI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMI;->z:LMI;

    .line 4
    new-instance v0, LMI;

    const/4 v7, 0x6

    const-string v8, "STREAM_SESSIONS"

    invoke-direct {v0, v8, v1, v7}, LMI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMI;->A:LMI;

    .line 5
    new-instance v0, LMI;

    const/4 v8, 0x7

    const-string v9, "SEMANTIC_DATA"

    invoke-direct {v0, v9, v4, v8}, LMI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMI;->B:LMI;

    .line 6
    new-instance v0, LMI;

    const/16 v9, 0x9

    const-string v10, "CONSISTENCY_TOKEN"

    invoke-direct {v0, v10, v6, v9}, LMI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMI;->C:LMI;

    .line 7
    new-instance v0, LMI;

    const-string v9, "PAYLOAD_NOT_SET"

    invoke-direct {v0, v9, v7, v2}, LMI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMI;->D:LMI;

    new-array v8, v8, [LMI;

    .line 8
    sget-object v9, LMI;->x:LMI;

    aput-object v9, v8, v2

    sget-object v2, LMI;->y:LMI;

    aput-object v2, v8, v3

    sget-object v2, LMI;->z:LMI;

    aput-object v2, v8, v5

    sget-object v2, LMI;->A:LMI;

    aput-object v2, v8, v1

    sget-object v1, LMI;->B:LMI;

    aput-object v1, v8, v4

    sget-object v1, LMI;->C:LMI;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, LMI;->E:[LMI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LMI;->w:I

    return-void
.end method

.method public static a(I)LMI;
    .locals 1

    if-eqz p0, :cond_6

    const/16 v0, 0x9

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, LMI;->B:LMI;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, LMI;->A:LMI;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, LMI;->z:LMI;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, LMI;->y:LMI;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, LMI;->x:LMI;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, LMI;->C:LMI;

    return-object p0

    .line 7
    :cond_6
    sget-object p0, LMI;->D:LMI;

    return-object p0
.end method

.method public static values()[LMI;
    .locals 1

    .line 1
    sget-object v0, LMI;->E:[LMI;

    invoke-virtual {v0}, [LMI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMI;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 8
    iget v0, p0, LMI;->w:I

    return v0
.end method
