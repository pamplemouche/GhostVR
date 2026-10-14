.class public Landroid/support/v4/a/a/s;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/a/a/v;

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

    const-class v0, Landroid/content/res/Resources;

    sput-object v0, Landroid/support/v4/a/a/s;->b:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/a/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/a/a/u;-><init>(Landroid/support/v4/a/a/t;)V

    sput-object v0, Landroid/support/v4/a/a/s;->a:Landroid/support/v4/a/a/v;

    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/s;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static a(Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/s;->a:Landroid/support/v4/a/a/v;

    invoke-interface {v0, p0}, Landroid/support/v4/a/a/v;->a(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
