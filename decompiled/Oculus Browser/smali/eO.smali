.class public final enum LeO;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LeO;

.field public static final enum B:LeO;

.field public static final enum C:LeO;

.field public static final enum D:LeO;

.field public static final synthetic E:[LeO;

.field public static final enum x:LeO;

.field public static final enum y:LeO;

.field public static final enum z:LeO;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, LeO;

    const/4 v1, 0x0

    const-string v2, "FONT_WEIGHT_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, LeO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LeO;->x:LeO;

    .line 2
    new-instance v0, LeO;

    const/4 v2, 0x1

    const-string v3, "THIN"

    invoke-direct {v0, v3, v2, v2}, LeO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LeO;->y:LeO;

    .line 3
    new-instance v0, LeO;

    const/4 v3, 0x2

    const-string v4, "LIGHT"

    invoke-direct {v0, v4, v3, v3}, LeO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LeO;->z:LeO;

    .line 4
    new-instance v0, LeO;

    const/4 v4, 0x3

    const-string v5, "REGULAR"

    invoke-direct {v0, v5, v4, v4}, LeO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LeO;->A:LeO;

    .line 5
    new-instance v0, LeO;

    const/4 v5, 0x4

    const-string v6, "MEDIUM"

    invoke-direct {v0, v6, v5, v5}, LeO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LeO;->B:LeO;

    .line 6
    new-instance v0, LeO;

    const/4 v6, 0x5

    const-string v7, "BOLD"

    invoke-direct {v0, v7, v6, v6}, LeO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LeO;->C:LeO;

    .line 7
    new-instance v0, LeO;

    const/4 v7, 0x6

    const-string v8, "BLACK"

    invoke-direct {v0, v8, v7, v7}, LeO;-><init>(Ljava/lang/String;II)V

    sput-object v0, LeO;->D:LeO;

    const/4 v8, 0x7

    new-array v8, v8, [LeO;

    .line 8
    sget-object v9, LeO;->x:LeO;

    aput-object v9, v8, v1

    sget-object v1, LeO;->y:LeO;

    aput-object v1, v8, v2

    sget-object v1, LeO;->z:LeO;

    aput-object v1, v8, v3

    sget-object v1, LeO;->A:LeO;

    aput-object v1, v8, v4

    sget-object v1, LeO;->B:LeO;

    aput-object v1, v8, v5

    sget-object v1, LeO;->C:LeO;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, LeO;->E:[LeO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LeO;->w:I

    return-void
.end method

.method public static a(I)LeO;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, LeO;->D:LeO;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, LeO;->C:LeO;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, LeO;->B:LeO;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, LeO;->A:LeO;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, LeO;->z:LeO;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, LeO;->y:LeO;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, LeO;->x:LeO;

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

.method public static values()[LeO;
    .locals 1

    .line 1
    sget-object v0, LeO;->E:[LeO;

    invoke-virtual {v0}, [LeO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LeO;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LeO;->w:I

    return v0
.end method
