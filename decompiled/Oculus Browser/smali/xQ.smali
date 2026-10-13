.class public final enum LxQ;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LxQ;

.field public static final enum B:LxQ;

.field public static final enum C:LxQ;

.field public static final enum D:LxQ;

.field public static final synthetic E:[LxQ;

.field public static final enum x:LxQ;

.field public static final enum y:LxQ;

.field public static final enum z:LxQ;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, LxQ;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_RENDERABLE_UNIT"

    invoke-direct {v0, v2, v1, v1}, LxQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxQ;->x:LxQ;

    .line 2
    new-instance v0, LxQ;

    const/4 v2, 0x1

    const-string v3, "STREAM"

    invoke-direct {v0, v3, v2, v2}, LxQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxQ;->y:LxQ;

    .line 3
    new-instance v0, LxQ;

    const/4 v3, 0x2

    const-string v4, "CARD"

    invoke-direct {v0, v4, v3, v3}, LxQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxQ;->z:LxQ;

    .line 4
    new-instance v0, LxQ;

    const/4 v4, 0x3

    const-string v5, "CONTENT"

    invoke-direct {v0, v5, v4, v4}, LxQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxQ;->A:LxQ;

    .line 5
    new-instance v0, LxQ;

    const/4 v5, 0x4

    const-string v6, "CLUSTER"

    invoke-direct {v0, v6, v5, v5}, LxQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxQ;->B:LxQ;

    .line 6
    new-instance v0, LxQ;

    const/4 v6, 0x5

    const-string v7, "TOKEN"

    invoke-direct {v0, v7, v6, v6}, LxQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxQ;->C:LxQ;

    .line 7
    new-instance v0, LxQ;

    const/4 v7, 0x6

    const-string v8, "CAROUSEL"

    invoke-direct {v0, v8, v7, v7}, LxQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LxQ;->D:LxQ;

    const/4 v8, 0x7

    new-array v8, v8, [LxQ;

    .line 8
    sget-object v9, LxQ;->x:LxQ;

    aput-object v9, v8, v1

    sget-object v1, LxQ;->y:LxQ;

    aput-object v1, v8, v2

    sget-object v1, LxQ;->z:LxQ;

    aput-object v1, v8, v3

    sget-object v1, LxQ;->A:LxQ;

    aput-object v1, v8, v4

    sget-object v1, LxQ;->B:LxQ;

    aput-object v1, v8, v5

    sget-object v1, LxQ;->C:LxQ;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, LxQ;->E:[LxQ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LxQ;->w:I

    return-void
.end method

.method public static a(I)LxQ;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, LxQ;->D:LxQ;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, LxQ;->C:LxQ;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, LxQ;->B:LxQ;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, LxQ;->A:LxQ;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, LxQ;->z:LxQ;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, LxQ;->y:LxQ;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, LxQ;->x:LxQ;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[LxQ;
    .locals 1

    .line 1
    sget-object v0, LxQ;->E:[LxQ;

    invoke-virtual {v0}, [LxQ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LxQ;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LxQ;->w:I

    return v0
.end method
