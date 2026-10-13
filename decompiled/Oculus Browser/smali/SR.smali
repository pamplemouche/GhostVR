.class public final enum LSR;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements LVF;


# static fields
.field public static final enum A:LSR;

.field public static final enum B:LSR;

.field public static final enum C:LSR;

.field public static final enum D:LSR;

.field public static final synthetic E:[LSR;

.field public static final enum x:LSR;

.field public static final enum y:LSR;

.field public static final enum z:LSR;


# instance fields
.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, LSR;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_ACHITECTURE"

    invoke-direct {v0, v2, v1, v1}, LSR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LSR;->x:LSR;

    .line 2
    new-instance v0, LSR;

    const/4 v2, 0x1

    const-string v3, "ARM"

    invoke-direct {v0, v3, v2, v2}, LSR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LSR;->y:LSR;

    .line 3
    new-instance v0, LSR;

    const/4 v3, 0x2

    const-string v4, "ARM64"

    invoke-direct {v0, v4, v3, v3}, LSR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LSR;->z:LSR;

    .line 4
    new-instance v0, LSR;

    const/4 v4, 0x3

    const-string v5, "MIPS"

    invoke-direct {v0, v5, v4, v4}, LSR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LSR;->A:LSR;

    .line 5
    new-instance v0, LSR;

    const/4 v5, 0x4

    const-string v6, "MIPS64"

    invoke-direct {v0, v6, v5, v5}, LSR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LSR;->B:LSR;

    .line 6
    new-instance v0, LSR;

    const/4 v6, 0x5

    const-string v7, "X86"

    invoke-direct {v0, v7, v6, v6}, LSR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LSR;->C:LSR;

    .line 7
    new-instance v0, LSR;

    const/4 v7, 0x6

    const-string v8, "X86_64"

    invoke-direct {v0, v8, v7, v7}, LSR;-><init>(Ljava/lang/String;II)V

    sput-object v0, LSR;->D:LSR;

    const/4 v8, 0x7

    new-array v8, v8, [LSR;

    .line 8
    sget-object v9, LSR;->x:LSR;

    aput-object v9, v8, v1

    sget-object v1, LSR;->y:LSR;

    aput-object v1, v8, v2

    sget-object v1, LSR;->z:LSR;

    aput-object v1, v8, v3

    sget-object v1, LSR;->A:LSR;

    aput-object v1, v8, v4

    sget-object v1, LSR;->B:LSR;

    aput-object v1, v8, v5

    sget-object v1, LSR;->C:LSR;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, LSR;->E:[LSR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LSR;->w:I

    return-void
.end method

.method public static a(I)LSR;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, LSR;->D:LSR;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, LSR;->C:LSR;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, LSR;->B:LSR;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, LSR;->A:LSR;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, LSR;->z:LSR;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, LSR;->y:LSR;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, LSR;->x:LSR;

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

.method public static values()[LSR;
    .locals 1

    .line 1
    sget-object v0, LSR;->E:[LSR;

    invoke-virtual {v0}, [LSR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LSR;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LSR;->w:I

    return v0
.end method
