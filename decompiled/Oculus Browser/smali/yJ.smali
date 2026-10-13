.class public final enum LyJ;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LyJ;

.field public static final enum B:LyJ;

.field public static final enum C:LyJ;

.field public static final enum D:LyJ;

.field public static final enum E:LyJ;

.field public static final enum F:LyJ;

.field public static final enum G:LyJ;

.field public static final enum H:LyJ;

.field public static final enum I:LyJ;

.field public static final enum J:LyJ;

.field public static final enum K:LyJ;

.field public static final synthetic L:[LyJ;

.field public static final enum x:LyJ;

.field public static final enum y:LyJ;

.field public static final enum z:LyJ;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, LyJ;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->x:LyJ;

    .line 2
    new-instance v0, LyJ;

    const/4 v2, 0x1

    const-string v3, "OPEN_URL"

    invoke-direct {v0, v3, v2, v2}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->y:LyJ;

    .line 3
    new-instance v0, LyJ;

    const/4 v3, 0x2

    const-string v4, "OPEN_URL_INCOGNITO"

    invoke-direct {v0, v4, v3, v3}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->z:LyJ;

    .line 4
    new-instance v0, LyJ;

    const/4 v4, 0x3

    const-string v5, "OPEN_URL_NEW_WINDOW"

    invoke-direct {v0, v5, v4, v4}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->A:LyJ;

    .line 5
    new-instance v0, LyJ;

    const/4 v5, 0x4

    const-string v6, "OPEN_CONTEXT_MENU"

    invoke-direct {v0, v6, v5, v5}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->B:LyJ;

    .line 6
    new-instance v0, LyJ;

    const/4 v6, 0x5

    const-string v7, "DISMISS_LOCAL"

    invoke-direct {v0, v7, v6, v6}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->C:LyJ;

    .line 7
    new-instance v0, LyJ;

    const/16 v7, 0xb

    const/4 v8, 0x6

    const-string v9, "DISMISS"

    invoke-direct {v0, v9, v8, v7}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->D:LyJ;

    .line 8
    new-instance v0, LyJ;

    const/4 v9, 0x7

    const-string v10, "DOWNLOAD"

    invoke-direct {v0, v10, v9, v8}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->E:LyJ;

    .line 9
    new-instance v0, LyJ;

    const/16 v10, 0x8

    const-string v11, "OPEN_URL_NEW_TAB"

    invoke-direct {v0, v11, v10, v9}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->F:LyJ;

    .line 10
    new-instance v0, LyJ;

    const/16 v11, 0x9

    const-string v12, "LEARN_MORE"

    invoke-direct {v0, v12, v11, v10}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->G:LyJ;

    .line 11
    new-instance v0, LyJ;

    const/16 v12, 0xa

    const/16 v13, 0xc

    const-string v14, "VIEW_ELEMENT"

    invoke-direct {v0, v14, v12, v13}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->H:LyJ;

    .line 12
    new-instance v0, LyJ;

    const/16 v14, 0xd

    const-string v15, "HIDE_ELEMENT"

    invoke-direct {v0, v15, v7, v14}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->I:LyJ;

    .line 13
    new-instance v0, LyJ;

    const/16 v15, 0xe

    const-string v7, "SHOW_TOOLTIP"

    invoke-direct {v0, v7, v13, v15}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->J:LyJ;

    .line 14
    new-instance v0, LyJ;

    const/16 v7, 0xf

    const-string v13, "NOT_INTERESTED_IN"

    invoke-direct {v0, v13, v14, v7}, LyJ;-><init>(Ljava/lang/String;II)V

    sput-object v0, LyJ;->K:LyJ;

    new-array v7, v15, [LyJ;

    .line 15
    sget-object v13, LyJ;->x:LyJ;

    aput-object v13, v7, v1

    sget-object v1, LyJ;->y:LyJ;

    aput-object v1, v7, v2

    sget-object v1, LyJ;->z:LyJ;

    aput-object v1, v7, v3

    sget-object v1, LyJ;->A:LyJ;

    aput-object v1, v7, v4

    sget-object v1, LyJ;->B:LyJ;

    aput-object v1, v7, v5

    sget-object v1, LyJ;->C:LyJ;

    aput-object v1, v7, v6

    sget-object v1, LyJ;->D:LyJ;

    aput-object v1, v7, v8

    sget-object v1, LyJ;->E:LyJ;

    aput-object v1, v7, v9

    sget-object v1, LyJ;->F:LyJ;

    aput-object v1, v7, v10

    sget-object v1, LyJ;->G:LyJ;

    aput-object v1, v7, v11

    sget-object v1, LyJ;->H:LyJ;

    aput-object v1, v7, v12

    sget-object v1, LyJ;->I:LyJ;

    const/16 v2, 0xb

    aput-object v1, v7, v2

    sget-object v1, LyJ;->J:LyJ;

    const/16 v2, 0xc

    aput-object v1, v7, v2

    aput-object v0, v7, v14

    sput-object v7, LyJ;->L:[LyJ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LyJ;->w:I

    return-void
.end method

.method public static a(I)LyJ;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, LyJ;->K:LyJ;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, LyJ;->J:LyJ;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, LyJ;->I:LyJ;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, LyJ;->H:LyJ;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, LyJ;->D:LyJ;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, LyJ;->G:LyJ;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, LyJ;->F:LyJ;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, LyJ;->E:LyJ;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, LyJ;->C:LyJ;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, LyJ;->B:LyJ;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, LyJ;->A:LyJ;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, LyJ;->z:LyJ;

    return-object p0

    .line 14
    :pswitch_d
    sget-object p0, LyJ;->y:LyJ;

    return-object p0

    .line 15
    :pswitch_e
    sget-object p0, LyJ;->x:LyJ;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[LyJ;
    .locals 1

    .line 1
    sget-object v0, LyJ;->L:[LyJ;

    invoke-virtual {v0}, [LyJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LyJ;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LyJ;->w:I

    return v0
.end method
