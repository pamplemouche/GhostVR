.class public Landroid/support/v4/widget/ao;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/widget/ar;

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

    const-class v0, Landroid/widget/AbsListView;

    sput-object v0, Landroid/support/v4/widget/ao;->b:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/widget/aq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/widget/aq;-><init>(Landroid/support/v4/widget/ap;)V

    sput-object v0, Landroid/support/v4/widget/ao;->a:Landroid/support/v4/widget/ar;

    return-void
.end method

.method public static a(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/ao;->a:Landroid/support/v4/widget/ar;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/ar;->a(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/ao;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/ao;->a:Landroid/support/v4/widget/ar;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ar;->a(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    return-void
.end method

.method public static b(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/ao;->a:Landroid/support/v4/widget/ar;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/ar;->b(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    return-void
.end method
