.class Landroid/support/v4/j/e;
.super Landroid/support/v4/j/d;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/j/d;-><init>(Landroid/support/v4/j/c;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/j/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/j/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 7

    invoke-static {}, Landroid/support/v4/j/b;->a()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/text/TextPaint;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, [C

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "semGetPrefixCharForSpan"

    invoke-static {v0, v3, v2}, Landroid/support/v4/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {v2, v0, v1}, Landroid/support/v4/a;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, [C

    if-eqz p2, :cond_0

    check-cast p1, [C

    check-cast p1, [C

    return-object p1

    :cond_0
    new-array p1, v4, [C

    return-object p1
.end method
