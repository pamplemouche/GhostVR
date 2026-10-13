.class public abstract Lmn0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lkn0;

.field public static b:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmn0;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lkn0;
    .locals 2

    .line 8
    sget-object v0, Lmn0;->a:Lkn0;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lln0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lln0;-><init>(Lin0;)V

    sput-object v0, Lmn0;->a:Lkn0;

    .line 10
    :cond_0
    sget-object v0, Lmn0;->a:Lkn0;

    return-object v0
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;
    .locals 3

    .line 14
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 15
    :cond_0
    invoke-static {}, Lmn0;->a()Lkn0;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p0

    check-cast v2, Lln0;

    if-eqz v2, :cond_2

    .line 16
    invoke-static {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 17
    :cond_1
    iget-wide v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    .line 18
    invoke-static {v1, v2, p0, v0}, LJ/N;->MzjNdQag(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    return-object p0

    .line 19
    :cond_2
    throw v1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/chromium/base/Callback;)V
    .locals 8

    const-string v0, "OfflinePages.Sharing.SharePageFromOverflowMenu"

    .line 11
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljn0;

    move-object v1, v0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p0

    move-object v5, p4

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ljn0;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;Lorg/chromium/base/Callback;)V

    .line 13
    sget-object p0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method

.method public static a(Ljava/lang/String;JILorg/chromium/base/Callback;)V
    .locals 9

    .line 20
    invoke-static {}, Lmn0;->a()Lkn0;

    move-result-object p0

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    check-cast p0, Lln0;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 21
    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v4

    if-nez v4, :cond_0

    .line 22
    invoke-interface {p4, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_0
    new-instance v8, Lhn0;

    invoke-direct {v8, p4}, Lhn0;-><init>(Lorg/chromium/base/Callback;)V

    .line 24
    iget-wide v2, v4, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    move-wide v5, p1

    move v7, p3

    .line 25
    invoke-static/range {v2 .. v8}, LJ/N;->MBaVkYrR(JLjava/lang/Object;JILjava/lang/Object;)V

    return-void

    .line 26
    :cond_1
    throw v1
.end method

.method public static a(Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;Landroid/app/Activity;Lorg/chromium/base/Callback;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->a:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->d:Ljava/lang/String;

    .line 3
    new-instance v4, Ljava/io/File;

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->e:Ljava/lang/String;

    .line 5
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    .line 7
    invoke-static/range {v0 .. v5}, Lmn0;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 1
    invoke-static {}, Lmn0;->a()Lkn0;

    move-result-object v0

    check-cast v0, Lln0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public static b(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 4

    .line 3
    invoke-static {}, Lmn0;->a()Lkn0;

    move-result-object v0

    check-cast v0, Lln0;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lmn0;->a()Lkn0;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p0

    check-cast v3, Lln0;

    if-eqz v3, :cond_3

    .line 7
    invoke-static {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    .line 9
    invoke-static {v0, v1, p0, v2}, LJ/N;->Mmgl0zEx(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .line 10
    :cond_3
    throw v1

    .line 11
    :cond_4
    throw v1
.end method

.method public static c(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 4

    .line 1
    invoke-static {}, Lmn0;->a()Lkn0;

    move-result-object v0

    check-cast v0, Lln0;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 6
    iget-wide v2, v1, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    .line 7
    invoke-static {v2, v3, v1, p0}, LJ/N;->MD0P9_ar(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    const/4 p0, 0x0

    .line 8
    throw p0
.end method

.method public static d(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lmn0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lmn0;->c(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v1

    const v2, 0x2000008

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->a:Ljava/lang/String;

    .line 5
    invoke-direct {v1, v0, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    return-void

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 8
    invoke-static {}, Lmn0;->a()Lkn0;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    check-cast v1, Lln0;

    if-eqz v1, :cond_3

    .line 9
    invoke-static {v2}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    .line 10
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 11
    iget-wide v3, v1, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    .line 12
    invoke-static {v3, v4, v1, v2}, LJ/N;->MRMfaXXV(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_1
    iput-object v1, v0, Lorg/chromium/content_public/browser/LoadUrlParams;->g:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 15
    throw p0
.end method
