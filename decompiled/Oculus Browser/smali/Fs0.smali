.class public final synthetic LFs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/page_info/PageInfoController;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LFs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    .line 1
    iget-wide v1, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->A:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/16 v3, 0x9

    .line 2
    invoke-static {v1, v2, v0, v3}, LJ/N;->MPH$pinU(JLjava/lang/Object;I)V

    .line 3
    :cond_0
    iget-object v1, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->w:Landroid/content/Context;

    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->D:Ljava/lang/String;

    .line 4
    const-class v2, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 7
    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 8
    invoke-static {}, LqU;->a()LqU;

    move-result-object v2

    .line 9
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v2}, LqU;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 12
    :try_start_2
    invoke-virtual {v2}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    .line 13
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v0, v2}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    throw v1
.end method
