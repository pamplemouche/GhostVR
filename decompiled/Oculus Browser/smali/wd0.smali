.class public Lwd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsd0;


# instance fields
.field public a:Ljava/lang/Runnable;

.field public final synthetic b:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "android.graphics.Insets"

    .line 9
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public a()LrU;
    .locals 2

    .line 1
    iget-object v0, p0, Lwd0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lud0;

    invoke-direct {v1, v0}, Lud0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    return-object v1
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 13
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    iput-object p2, p0, Lwd0;->a:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 15
    new-instance p2, Lvd0;

    invoke-direct {p2, p0}, Lvd0;-><init>(Lwd0;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 16
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 6

    .line 3
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 5
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_0
    const-class v0, Landroid/view/WindowInsets;

    const-string v2, "getSystemGestureInsets"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    const-string p1, "left"

    .line 8
    invoke-virtual {p0, v3, p1}, Lwd0;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "right"

    invoke-virtual {p0, v3, p1}, Lwd0;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public b()LMd0;
    .locals 2

    .line 1
    new-instance v0, Lge0;

    iget-object v1, p0, Lwd0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {v0, v1}, Lge0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method public c()LJd0;
    .locals 2

    .line 1
    new-instance v0, Lfe0;

    iget-object v1, p0, Lwd0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {v0, v1}, Lfe0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method
