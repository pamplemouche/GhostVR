.class public final synthetic Lte0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lue0;

.field public final b:Landroid/app/Activity;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lue0;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lte0;->a:Lue0;

    iput-object p2, p0, Lte0;->b:Landroid/app/Activity;

    iput-object p3, p0, Lte0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lte0;->a:Lue0;

    iget-object v1, p0, Lte0;->b:Landroid/app/Activity;

    check-cast p1, LRb0;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "Feedback data: "

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iput-object v2, p1, LRb0;->A:Lorg/chromium/base/Callback;

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5
    new-instance v3, LPb0;

    invoke-direct {v3, v2}, LPb0;-><init>(Landroid/os/Bundle;)V

    .line 6
    iget-object v4, p1, LRb0;->w:Ljava/util/List;

    invoke-static {v4, v3}, LsT;->a(Ljava/util/Collection;Lorg/chromium/base/Callback;)V

    .line 7
    iget-object p1, p1, LRb0;->x:Ljava/util/List;

    invoke-static {p1, v3}, LsT;->a(Ljava/util/Collection;Lorg/chromium/base/Callback;)V

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-string v0, "https://support.google.com/chrome/topic/6069782"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "create_new_tab"

    const/4 v2, 0x1

    .line 11
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 14
    :cond_0
    throw v2

    .line 15
    :cond_1
    throw v2
.end method
