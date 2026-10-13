.class public LFN0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/chrome/browser/profiles/Profile;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LFN0;->a:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 3
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 4
    iput-object p1, p0, LFN0;->b:Landroid/content/Context;

    const-string v0, "notification"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, LFN0;->c:Landroid/app/NotificationManager;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    invoke-static {}, LjO0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotificationSuspender"

    .line 2
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Icon;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, LFN0;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 9

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 8
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOl0;

    .line 9
    iget-object v4, v4, LOl0;->a:Landroid/app/Notification;

    .line 10
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LOl0;

    .line 11
    iget-object v5, v5, LOl0;->b:Lcm0;

    .line 12
    iget-object v5, v5, Lcm0;->b:Ljava/lang/String;

    .line 13
    aput-object v5, v0, v3

    .line 14
    invoke-static {v5}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v7, v6, 0x0

    .line 15
    invoke-virtual {v4}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {p0, v8}, LFN0;->a(Landroid/graphics/drawable/Icon;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 16
    aput-object v8, v2, v7

    add-int/lit8 v7, v6, 0x1

    .line 17
    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {p0, v8}, LFN0;->a(Landroid/graphics/drawable/Icon;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 18
    aput-object v8, v2, v7

    add-int/lit8 v6, v6, 0x2

    .line 19
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.picture"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 20
    aput-object v4, v2, v6

    .line 21
    iget-object v4, p0, LFN0;->c:Landroid/app/NotificationManager;

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, LFN0;->a:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 23
    invoke-static {p1, v0, v1, v2}, LJ/N;->Mj9WitTn(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
