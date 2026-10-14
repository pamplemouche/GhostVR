.class public Landroid/support/v4/a/f;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/a/i;

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

    const-class v0, Landroid/content/Context;

    sput-object v0, Landroid/support/v4/a/f;->b:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/a/h;-><init>(Landroid/support/v4/a/g;)V

    sput-object v0, Landroid/support/v4/a/f;->a:Landroid/support/v4/a/i;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 1

    sget-object v0, Landroid/support/v4/a/f;->a:Landroid/support/v4/a/i;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/a/i;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/a/f;->b:Ljava/lang/Class;

    return-object v0
.end method
