.class public final enum LCI;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LCI;

.field public static final enum B:LCI;

.field public static final enum C:LCI;

.field public static final synthetic D:[LCI;

.field public static final enum x:LCI;

.field public static final enum y:LCI;

.field public static final enum z:LCI;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, LCI;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "STREAM"

    invoke-direct {v0, v3, v2, v1}, LCI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LCI;->x:LCI;

    .line 2
    new-instance v0, LCI;

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-string v5, "CARD"

    invoke-direct {v0, v5, v3, v4}, LCI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LCI;->y:LCI;

    .line 3
    new-instance v0, LCI;

    const/4 v5, 0x6

    const/4 v6, 0x2

    const-string v7, "CONTENT"

    invoke-direct {v0, v7, v6, v5}, LCI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LCI;->z:LCI;

    .line 4
    new-instance v0, LCI;

    const/4 v7, 0x7

    const/4 v8, 0x3

    const-string v9, "CLUSTER"

    invoke-direct {v0, v9, v8, v7}, LCI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LCI;->A:LCI;

    .line 5
    new-instance v0, LCI;

    const/16 v7, 0x8

    const-string v9, "LEGACY_CONTENT"

    invoke-direct {v0, v9, v1, v7}, LCI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LCI;->B:LCI;

    .line 6
    new-instance v0, LCI;

    const-string v7, "FEATUREPAYLOAD_NOT_SET"

    invoke-direct {v0, v7, v4, v2}, LCI;-><init>(Ljava/lang/String;II)V

    sput-object v0, LCI;->C:LCI;

    new-array v5, v5, [LCI;

    .line 7
    sget-object v7, LCI;->x:LCI;

    aput-object v7, v5, v2

    sget-object v2, LCI;->y:LCI;

    aput-object v2, v5, v3

    sget-object v2, LCI;->z:LCI;

    aput-object v2, v5, v6

    sget-object v2, LCI;->A:LCI;

    aput-object v2, v5, v8

    sget-object v2, LCI;->B:LCI;

    aput-object v2, v5, v1

    aput-object v0, v5, v4

    sput-object v5, LCI;->D:[LCI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LCI;->w:I

    return-void
.end method

.method public static a(I)LCI;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, LCI;->B:LCI;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, LCI;->A:LCI;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, LCI;->z:LCI;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, LCI;->y:LCI;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, LCI;->x:LCI;

    return-object p0

    .line 6
    :cond_0
    sget-object p0, LCI;->C:LCI;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[LCI;
    .locals 1

    .line 1
    sget-object v0, LCI;->D:[LCI;

    invoke-virtual {v0}, [LCI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCI;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 7
    iget v0, p0, LCI;->w:I

    return v0
.end method
