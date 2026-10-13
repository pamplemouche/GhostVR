.class public final enum LWP;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LWP;

.field public static final enum B:LWP;

.field public static final enum C:LWP;

.field public static final enum D:LWP;

.field public static final enum E:LWP;

.field public static final enum F:LWP;

.field public static final enum G:LWP;

.field public static final synthetic H:[LWP;

.field public static final enum x:LWP;

.field public static final enum y:LWP;

.field public static final enum z:LWP;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, LWP;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_CAPABILITY"

    invoke-direct {v0, v2, v1, v1}, LWP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWP;->x:LWP;

    .line 2
    new-instance v0, LWP;

    const/4 v2, 0x1

    const-string v3, "BASE_UI"

    invoke-direct {v0, v3, v2, v2}, LWP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWP;->y:LWP;

    .line 3
    new-instance v0, LWP;

    const/4 v3, 0x2

    const-string v4, "FEED_UI"

    invoke-direct {v0, v4, v3, v3}, LWP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWP;->z:LWP;

    .line 4
    new-instance v0, LWP;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "UNDOABLE_ACTIONS"

    invoke-direct {v0, v6, v4, v5}, LWP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWP;->A:LWP;

    .line 5
    new-instance v0, LWP;

    const/4 v6, 0x5

    const-string v7, "MANAGE_INTERESTS"

    invoke-direct {v0, v7, v5, v6}, LWP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWP;->B:LWP;

    .line 6
    new-instance v0, LWP;

    const/4 v7, 0x6

    const-string v8, "CARD_MENU_TOOLTIP"

    invoke-direct {v0, v8, v6, v7}, LWP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWP;->C:LWP;

    .line 7
    new-instance v0, LWP;

    const/4 v8, 0x7

    const-string v9, "USE_SECONDARY_PAGE_REQUEST"

    invoke-direct {v0, v9, v7, v8}, LWP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWP;->D:LWP;

    .line 8
    new-instance v0, LWP;

    const/16 v9, 0x8

    const-string v10, "ARTICLE_SNIPPETS"

    invoke-direct {v0, v10, v8, v9}, LWP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWP;->E:LWP;

    .line 9
    new-instance v0, LWP;

    const/16 v10, 0x9

    const-string v11, "CAROUSELS"

    invoke-direct {v0, v11, v9, v10}, LWP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWP;->F:LWP;

    .line 10
    new-instance v0, LWP;

    const/16 v11, 0xa

    const-string v12, "ELEMENTS"

    invoke-direct {v0, v12, v10, v11}, LWP;-><init>(Ljava/lang/String;II)V

    sput-object v0, LWP;->G:LWP;

    new-array v11, v11, [LWP;

    .line 11
    sget-object v12, LWP;->x:LWP;

    aput-object v12, v11, v1

    sget-object v1, LWP;->y:LWP;

    aput-object v1, v11, v2

    sget-object v1, LWP;->z:LWP;

    aput-object v1, v11, v3

    sget-object v1, LWP;->A:LWP;

    aput-object v1, v11, v4

    sget-object v1, LWP;->B:LWP;

    aput-object v1, v11, v5

    sget-object v1, LWP;->C:LWP;

    aput-object v1, v11, v6

    sget-object v1, LWP;->D:LWP;

    aput-object v1, v11, v7

    sget-object v1, LWP;->E:LWP;

    aput-object v1, v11, v8

    sget-object v1, LWP;->F:LWP;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, LWP;->H:[LWP;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LWP;->w:I

    return-void
.end method

.method public static a(I)LWP;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, LWP;->G:LWP;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, LWP;->F:LWP;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, LWP;->E:LWP;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, LWP;->D:LWP;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, LWP;->C:LWP;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, LWP;->B:LWP;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, LWP;->A:LWP;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, LWP;->z:LWP;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, LWP;->y:LWP;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, LWP;->x:LWP;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[LWP;
    .locals 1

    .line 1
    sget-object v0, LWP;->H:[LWP;

    invoke-virtual {v0}, [LWP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LWP;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LWP;->w:I

    return v0
.end method
