.class public Lorg/chromium/content/browser/ScreenOrientationProviderImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkT;


# instance fields
.field public w:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->w:Ljava/util/Map;

    return-void
.end method

.method public static a(BLorg/chromium/ui/base/WindowAndroid;Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "cr.ScreenOrientation"

    const-string p2, "Trying to lock to unsupported orientation!"

    .line 1
    invoke-static {p1, p2, p0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :pswitch_0
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lcd1;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Lcd1;->a(Landroid/content/Context;)Lcd1;

    move-result-object p0

    .line 4
    :goto_0
    iget p1, p0, Lcd1;->g:I

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p0, p0, Lcd1;->c:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->y:I

    .line 6
    iget p0, p0, Landroid/graphics/Point;->x:I

    if-ge p1, p0, :cond_2

    return v1

    :cond_2
    return v2

    .line 7
    :cond_3
    :goto_1
    iget-object p0, p0, Lcd1;->c:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->y:I

    .line 8
    iget p0, p0, Landroid/graphics/Point;->x:I

    if-lt p1, p0, :cond_4

    return v1

    :cond_4
    return v2

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/16 p0, 0xa

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :pswitch_5
    return v2

    :pswitch_6
    const/16 p0, 0x9

    return p0

    :pswitch_7
    return v1

    :pswitch_8
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lorg/chromium/content/browser/ScreenOrientationProviderImpl;
    .locals 1

    .line 1
    sget-object v0, LGW0;->a:Lorg/chromium/content/browser/ScreenOrientationProviderImpl;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;ZI)V
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->w:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, p3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public isOrientationLockEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lockOrientation(Lorg/chromium/ui/base/WindowAndroid;B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p2, p1, v0}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->a(BLorg/chromium/ui/base/WindowAndroid;Landroid/content/Context;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, v0, p2, p1}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->a(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->w:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unlockOrientation(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "org.chromium.content_public.common.orientation"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    .line 3
    invoke-static {v1, p1, v0}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->a(BLorg/chromium/ui/base/WindowAndroid;Landroid/content/Context;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    .line 6
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 7
    iget p1, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    invoke-virtual {p0, v0, v2, p1}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->a(Landroid/app/Activity;ZI)V

    throw v1

    :catch_0
    :cond_2
    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->a(Landroid/app/Activity;ZI)V

    return-void
.end method
