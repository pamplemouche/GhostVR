.class public LJ50;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public b:LV01;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ChromeSmartSelection"

    .line 2
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-le v0, v3, :cond_6

    .line 4
    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object v0

    .line 5
    invoke-interface {v0}, LX01;->b()LU01;

    move-result-object v0

    .line 6
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v4

    .line 7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x0

    if-lt v5, v3, :cond_5

    if-nez v4, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {v4}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "device_provisioned"

    .line 11
    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_5

    .line 12
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance v6, Lorg/chromium/content/browser/selection/SmartSelectionClient;

    invoke-direct {v6, v0, p1, v4}, Lorg/chromium/content/browser/selection/SmartSelectionClient;-><init>(LU01;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V

    .line 14
    :cond_5
    :goto_2
    iput-object v6, p0, LJ50;->b:LV01;

    .line 15
    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p1

    .line 16
    iget-object v0, p0, LJ50;->b:LV01;

    invoke-interface {p1, v0}, LX01;->a(LV01;)V

    .line 17
    :cond_6
    iget-object p1, p0, LJ50;->b:LV01;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, LJ50;->a:Z

    return-void
.end method
