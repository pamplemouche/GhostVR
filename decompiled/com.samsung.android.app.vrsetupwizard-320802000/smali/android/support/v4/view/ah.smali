.class public Landroid/support/v4/view/ah;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/am;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/view/InputDevice;

    sput-object v0, Landroid/support/v4/view/ah;->b:Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/view/al;

    invoke-direct {v0, v1}, Landroid/support/v4/view/al;-><init>(Landroid/support/v4/view/ai;)V

    :goto_0
    sput-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/am;

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    new-instance v0, Landroid/support/v4/view/ak;

    invoke-direct {v0, v1}, Landroid/support/v4/view/ak;-><init>(Landroid/support/v4/view/ai;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/aj;

    invoke-direct {v0, v1}, Landroid/support/v4/view/aj;-><init>(Landroid/support/v4/view/ai;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/view/ah;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/view/InputDevice;I)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Landroid/support/v4/view/ah;->a:Landroid/support/v4/view/am;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/am;->a(Landroid/view/InputDevice;I)V

    :cond_0
    return-void
.end method
