.class Landroid/support/v4/widget/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/ar;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/ap;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/widget/aq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 2

    invoke-static {}, Landroid/support/v4/widget/ao;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEdgeGlowTop"

    invoke-static {v0, v1}, Landroid/support/v4/a;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1, v0}, Landroid/support/v4/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/EdgeEffect;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 2

    invoke-static {}, Landroid/support/v4/widget/ao;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEdgeGlowTop"

    invoke-static {v0, v1}, Landroid/support/v4/a;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1, v0, p2}, Landroid/support/v4/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 2

    invoke-static {}, Landroid/support/v4/widget/ao;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEdgeGlowBottom"

    invoke-static {v0, v1}, Landroid/support/v4/a;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1, v0, p2}, Landroid/support/v4/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
