.class public final enum LbR;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LbR;

.field public static final enum B:LbR;

.field public static final enum C:LbR;

.field public static final enum D:LbR;

.field public static final enum E:LbR;

.field public static final synthetic F:[LbR;

.field public static final enum x:LbR;

.field public static final enum y:LbR;

.field public static final enum z:LbR;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, LbR;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_REQUEST_REASON"

    invoke-direct {v0, v2, v1, v1}, LbR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbR;->x:LbR;

    .line 2
    new-instance v0, LbR;

    const/4 v2, 0x1

    const-string v3, "MANUAL_REFRESH"

    invoke-direct {v0, v3, v2, v2}, LbR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbR;->y:LbR;

    .line 3
    new-instance v0, LbR;

    const/4 v3, 0x2

    const-string v4, "SCHEDULED_REFRESH"

    invoke-direct {v0, v4, v3, v3}, LbR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbR;->z:LbR;

    .line 4
    new-instance v0, LbR;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "NEXT_PAGE_SCROLL"

    invoke-direct {v0, v6, v4, v5}, LbR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbR;->A:LbR;

    .line 5
    new-instance v0, LbR;

    const/4 v6, 0x5

    const-string v7, "CLEAR_ALL"

    invoke-direct {v0, v7, v5, v6}, LbR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbR;->B:LbR;

    .line 6
    new-instance v0, LbR;

    const/4 v7, 0x6

    const-string v8, "ZERO_STATE_REFRESH"

    invoke-direct {v0, v8, v6, v7}, LbR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbR;->C:LbR;

    .line 7
    new-instance v0, LbR;

    const/4 v8, 0x7

    const-string v9, "INITIAL_LOAD"

    invoke-direct {v0, v9, v7, v8}, LbR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbR;->D:LbR;

    .line 8
    new-instance v0, LbR;

    const/16 v9, 0x8

    const-string v10, "WITH_CONTENT"

    invoke-direct {v0, v10, v8, v9}, LbR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LbR;->E:LbR;

    new-array v9, v9, [LbR;

    .line 9
    sget-object v10, LbR;->x:LbR;

    aput-object v10, v9, v1

    sget-object v1, LbR;->y:LbR;

    aput-object v1, v9, v2

    sget-object v1, LbR;->z:LbR;

    aput-object v1, v9, v3

    sget-object v1, LbR;->A:LbR;

    aput-object v1, v9, v4

    sget-object v1, LbR;->B:LbR;

    aput-object v1, v9, v5

    sget-object v1, LbR;->C:LbR;

    aput-object v1, v9, v6

    sget-object v1, LbR;->D:LbR;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, LbR;->F:[LbR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LbR;->w:I

    return-void
.end method

.method public static a(I)LbR;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, LbR;->E:LbR;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, LbR;->D:LbR;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, LbR;->C:LbR;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, LbR;->B:LbR;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, LbR;->A:LbR;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, LbR;->z:LbR;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, LbR;->y:LbR;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, LbR;->x:LbR;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[LbR;
    .locals 1

    .line 1
    sget-object v0, LbR;->F:[LbR;

    invoke-virtual {v0}, [LbR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LbR;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LbR;->w:I

    return v0
.end method
