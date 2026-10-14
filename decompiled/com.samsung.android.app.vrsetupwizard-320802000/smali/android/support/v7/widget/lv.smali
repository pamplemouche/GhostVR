.class Landroid/support/v7/widget/lv;
.super Ljava/lang/Object;


# static fields
.field static d:Landroid/support/v4/k/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/s<",
            "Landroid/support/v7/widget/lv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Landroid/support/v7/widget/eq;

.field c:Landroid/support/v7/widget/eq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/k/t;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/k/t;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/lv;->d:Landroid/support/v4/k/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Landroid/support/v7/widget/lv;
    .locals 1

    sget-object v0, Landroid/support/v7/widget/lv;->d:Landroid/support/v4/k/s;

    invoke-interface {v0}, Landroid/support/v4/k/s;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/lv;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/lv;

    invoke-direct {v0}, Landroid/support/v7/widget/lv;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Landroid/support/v7/widget/lv;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/lv;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/lv;->b:Landroid/support/v7/widget/eq;

    iput-object v0, p0, Landroid/support/v7/widget/lv;->c:Landroid/support/v7/widget/eq;

    sget-object v0, Landroid/support/v7/widget/lv;->d:Landroid/support/v4/k/s;

    invoke-interface {v0, p0}, Landroid/support/v4/k/s;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method static b()V
    .locals 1

    :goto_0
    sget-object v0, Landroid/support/v7/widget/lv;->d:Landroid/support/v4/k/s;

    invoke-interface {v0}, Landroid/support/v4/k/s;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method
