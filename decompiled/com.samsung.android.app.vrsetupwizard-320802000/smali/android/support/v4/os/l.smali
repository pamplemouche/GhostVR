.class public Landroid/support/v4/os/l;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/os/n;

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
    .locals 2

    const-class v0, Landroid/os/UserHandle;

    sput-object v0, Landroid/support/v4/os/l;->b:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/os/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/os/n;-><init>(Landroid/support/v4/os/m;)V

    sput-object v0, Landroid/support/v4/os/l;->a:Landroid/support/v4/os/n;

    return-void
.end method

.method public static a()I
    .locals 1

    sget-object v0, Landroid/support/v4/os/l;->a:Landroid/support/v4/os/n;

    invoke-virtual {v0}, Landroid/support/v4/os/n;->a()I

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/os/l;->b:Ljava/lang/Class;

    return-object v0
.end method
