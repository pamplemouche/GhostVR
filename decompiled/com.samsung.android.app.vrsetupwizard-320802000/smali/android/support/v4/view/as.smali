.class public Landroid/support/v4/view/as;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/av;

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

    const-class v0, Landroid/view/ViewGroup;

    sput-object v0, Landroid/support/v4/view/as;->b:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/view/au;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/au;-><init>(Landroid/support/v4/view/at;)V

    sput-object v0, Landroid/support/v4/view/as;->a:Landroid/support/v4/view/av;

    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/view/as;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/as;->a:Landroid/support/v4/view/av;

    invoke-interface {v0, p0}, Landroid/support/v4/view/av;->a(Landroid/view/ViewGroup;)V

    return-void
.end method
