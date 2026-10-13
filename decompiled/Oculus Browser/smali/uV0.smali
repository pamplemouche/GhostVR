.class public final enum LuV0;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LuV0;

.field public static final enum B:LuV0;

.field public static final enum C:LuV0;

.field public static final enum D:LuV0;

.field public static final enum E:LuV0;

.field public static final synthetic F:[LuV0;

.field public static final enum x:LuV0;

.field public static final enum y:LuV0;

.field public static final enum z:LuV0;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, LuV0;

    const/4 v1, 0x0

    const-string v2, "TYPE_UNSET"

    invoke-direct {v0, v2, v1, v1}, LuV0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LuV0;->x:LuV0;

    .line 2
    new-instance v0, LuV0;

    const/4 v2, 0x1

    const-string v3, "TYPE_WIN"

    invoke-direct {v0, v3, v2, v2}, LuV0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LuV0;->y:LuV0;

    .line 3
    new-instance v0, LuV0;

    const/4 v3, 0x2

    const-string v4, "TYPE_MAC"

    invoke-direct {v0, v4, v3, v3}, LuV0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LuV0;->z:LuV0;

    .line 4
    new-instance v0, LuV0;

    const/4 v4, 0x3

    const-string v5, "TYPE_LINUX"

    invoke-direct {v0, v5, v4, v4}, LuV0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LuV0;->A:LuV0;

    .line 5
    new-instance v0, LuV0;

    const/4 v5, 0x4

    const-string v6, "TYPE_CROS"

    invoke-direct {v0, v6, v5, v5}, LuV0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LuV0;->B:LuV0;

    .line 6
    new-instance v0, LuV0;

    const/4 v6, 0x5

    const-string v7, "TYPE_OTHER"

    invoke-direct {v0, v7, v6, v6}, LuV0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LuV0;->C:LuV0;

    .line 7
    new-instance v0, LuV0;

    const/4 v7, 0x6

    const-string v8, "TYPE_PHONE"

    invoke-direct {v0, v8, v7, v7}, LuV0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LuV0;->D:LuV0;

    .line 8
    new-instance v0, LuV0;

    const/4 v8, 0x7

    const-string v9, "TYPE_TABLET"

    invoke-direct {v0, v9, v8, v8}, LuV0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LuV0;->E:LuV0;

    const/16 v9, 0x8

    new-array v9, v9, [LuV0;

    .line 9
    sget-object v10, LuV0;->x:LuV0;

    aput-object v10, v9, v1

    sget-object v1, LuV0;->y:LuV0;

    aput-object v1, v9, v2

    sget-object v1, LuV0;->z:LuV0;

    aput-object v1, v9, v3

    sget-object v1, LuV0;->A:LuV0;

    aput-object v1, v9, v4

    sget-object v1, LuV0;->B:LuV0;

    aput-object v1, v9, v5

    sget-object v1, LuV0;->C:LuV0;

    aput-object v1, v9, v6

    sget-object v1, LuV0;->D:LuV0;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, LuV0;->F:[LuV0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LuV0;->w:I

    return-void
.end method

.method public static a(I)LuV0;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, LuV0;->E:LuV0;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, LuV0;->D:LuV0;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, LuV0;->C:LuV0;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, LuV0;->B:LuV0;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, LuV0;->A:LuV0;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, LuV0;->z:LuV0;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, LuV0;->y:LuV0;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, LuV0;->x:LuV0;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[LuV0;
    .locals 1

    .line 1
    sget-object v0, LuV0;->F:[LuV0;

    invoke-virtual {v0}, [LuV0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LuV0;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LuV0;->w:I

    return v0
.end method
