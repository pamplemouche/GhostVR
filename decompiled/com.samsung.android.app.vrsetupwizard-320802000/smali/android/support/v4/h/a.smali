.class public Landroid/support/v4/h/a;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/h/d;

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

    const-class v0, Landroid/media/AudioManager;

    sput-object v0, Landroid/support/v4/h/a;->b:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/h/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/h/c;-><init>(Landroid/support/v4/h/b;)V

    sput-object v0, Landroid/support/v4/h/a;->a:Landroid/support/v4/h/d;

    return-void
.end method

.method public static a()I
    .locals 1

    sget-object v0, Landroid/support/v4/h/a;->a:Landroid/support/v4/h/d;

    invoke-interface {v0}, Landroid/support/v4/h/d;->a()I

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/h/a;->b:Ljava/lang/Class;

    return-object v0
.end method
