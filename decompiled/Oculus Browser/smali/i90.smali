.class public Li90;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LXF0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LZF0;
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    instance-of v2, v0, LYF0;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, LYF0;

    invoke-interface {v0}, LYF0;->C()LZF0;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object p1, LzT;->a:Landroid/content/Context;

    const/4 v0, 0x6

    .line 2
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;I)V

    return-void
.end method
