.class public final synthetic LNs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

.field public final x:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    iput-object p2, p0, LNs0;->x:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LNs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    iget-object v1, p0, LNs0;->x:Landroid/content/Intent;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package:"

    .line 2
    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    const/high16 v2, 0x10000000

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 5
    throw v0
.end method
