.class Landroid/support/v4/a/a/q;
.super Landroid/support/v4/a/a/p;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/a/a/p;-><init>(Landroid/support/v4/a/a/o;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/a/a/o;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/a/a/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)I
    .locals 2

    invoke-static {}, Landroid/support/v4/a/a/n;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semDesktopModeEnabled"

    invoke-static {v0, v1}, Landroid/support/v4/a;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1, v0}, Landroid/support/v4/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public b(Landroid/content/res/Configuration;)I
    .locals 2

    invoke-static {}, Landroid/support/v4/a/a/n;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SEM_DESKTOP_MODE_ENABLED"

    invoke-static {v0, v1}, Landroid/support/v4/a;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1, v0}, Landroid/support/v4/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
