.class public final Landroid/support/v4/j/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/support/v4/j/g;

.field public static final b:Landroid/support/v4/j/g;

.field public static final c:Landroid/support/v4/j/g;

.field public static final d:Landroid/support/v4/j/g;

.field public static final e:Landroid/support/v4/j/g;

.field public static final f:Landroid/support/v4/j/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/support/v4/j/m;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/j/m;-><init>(Landroid/support/v4/j/k;Z)V

    sput-object v0, Landroid/support/v4/j/h;->a:Landroid/support/v4/j/g;

    new-instance v0, Landroid/support/v4/j/m;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/support/v4/j/m;-><init>(Landroid/support/v4/j/k;Z)V

    sput-object v0, Landroid/support/v4/j/h;->b:Landroid/support/v4/j/g;

    new-instance v0, Landroid/support/v4/j/m;

    sget-object v1, Landroid/support/v4/j/j;->a:Landroid/support/v4/j/j;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/j/m;-><init>(Landroid/support/v4/j/k;Z)V

    sput-object v0, Landroid/support/v4/j/h;->c:Landroid/support/v4/j/g;

    new-instance v0, Landroid/support/v4/j/m;

    sget-object v1, Landroid/support/v4/j/j;->a:Landroid/support/v4/j/j;

    invoke-direct {v0, v1, v3}, Landroid/support/v4/j/m;-><init>(Landroid/support/v4/j/k;Z)V

    sput-object v0, Landroid/support/v4/j/h;->d:Landroid/support/v4/j/g;

    new-instance v0, Landroid/support/v4/j/m;

    sget-object v1, Landroid/support/v4/j/i;->a:Landroid/support/v4/j/i;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/j/m;-><init>(Landroid/support/v4/j/k;Z)V

    sput-object v0, Landroid/support/v4/j/h;->e:Landroid/support/v4/j/g;

    sget-object v0, Landroid/support/v4/j/n;->a:Landroid/support/v4/j/n;

    sput-object v0, Landroid/support/v4/j/h;->f:Landroid/support/v4/j/g;

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
