.class public LB90;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Landroid/util/LongSparseArray;

.field public final d:Landroid/util/LongSparseArray;

.field public final e:LWT;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, LB90;->c:Landroid/util/LongSparseArray;

    .line 3
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, LB90;->d:Landroid/util/LongSparseArray;

    .line 4
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LB90;->e:LWT;

    .line 5
    iput-object p1, p0, LB90;->a:Landroid/content/Context;

    .line 6
    sget-object p1, LyT;->a:Landroid/content/SharedPreferences;

    .line 7
    iput-object p1, p0, LB90;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lx90;
    .locals 20

    const-string v1, "OMADownloadHandler"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 36
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 38
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object/from16 v5, p0

    .line 39
    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 40
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 41
    new-instance v6, Lx90;

    invoke-direct {v6}, Lx90;-><init>()V

    .line 42
    new-instance v7, Ljava/util/ArrayList;

    const-string v8, "type"

    const-string v9, "size"

    const-string v10, "objectURI"

    const-string v11, "installNotifyURI"

    const-string v12, "nextURL"

    const-string v13, "DDVersion"

    const-string v14, "name"

    const-string v15, "description"

    const-string v16, "vendor"

    const-string v17, "infoURL"

    const-string v18, "iconURI"

    const-string v19, "installParam"

    filled-new-array/range {v8 .. v19}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v4

    move-object v9, v8

    :goto_0
    if-eq v5, v3, :cond_8

    if-nez v5, :cond_1

    .line 43
    iget-object v5, v6, Lx90;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v6, Lx90;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_7

    return-object v4

    :cond_1
    const/4 v10, 0x2

    const-string v11, "Nested attributes was found in the download descriptor"

    if-ne v5, v10, :cond_4

    .line 44
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v8, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    .line 46
    invoke-static {v1, v11, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 47
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_3
    move-object v5, v8

    :goto_2
    move-object v8, v5

    goto :goto_3

    :cond_4
    const/4 v10, 0x3

    if-ne v5, v10, :cond_6

    if-eqz v8, :cond_7

    .line 48
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-array v0, v2, [Ljava/lang/Object;

    .line 49
    invoke-static {v1, v11, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 50
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Lx90;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    move-object v9, v8

    goto :goto_3

    :cond_6
    const/4 v10, 0x4

    if-ne v5, v10, :cond_7

    if-eqz v8, :cond_7

    .line 51
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_7
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_8
    return-object v6

    :catch_0
    move-exception v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Failed to read download descriptor."

    .line 53
    invoke-static {v1, v0, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :catch_1
    move-exception v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Failed to parse download descriptor."

    .line 54
    invoke-static {v1, v0, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method

.method public static synthetic a(LB90;J)V
    .locals 7

    .line 66
    iget-object v0, p0, LB90;->b:Landroid/content/SharedPreferences;

    const-string v1, "PendingOMADownloads"

    .line 67
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    invoke-static {v3}, Lw90;->a(Ljava/lang/String;)Lw90;

    move-result-object v4

    .line 70
    iget-wide v4, v4, Lw90;->a:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    .line 71
    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object p0, p0, LB90;->b:Landroid/content/SharedPreferences;

    const/4 p1, 0x0

    .line 73
    invoke-static {p0, v1, v0, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;Z)V

    :cond_1
    return-void
.end method

.method public static synthetic a(LB90;Lorg/chromium/chrome/browser/download/DownloadItem;I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 55
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object p0

    .line 56
    iget-object v1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 57
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 58
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Z)Lu80;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 60
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadInfo;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Lorg/chromium/components/offline_items_collection/OfflineItem;

    move-result-object p1

    .line 61
    iget-object v1, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->w:LbU0;

    const-string v2, "LEGACY_ANDROID_DOWNLOAD"

    iput-object v2, v1, LbU0;->a:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v1, :cond_1

    .line 62
    iput v2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    const/4 p2, 0x5

    .line 63
    iput p2, p1, Lorg/chromium/components/offline_items_collection/OfflineItem;->S:I

    .line 64
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V

    :goto_1
    return-void

    .line 65
    :cond_3
    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, ".dm"

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".dcf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".dr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".drc"

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static b(Lx90;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lx90;->a:Ljava/util/Map;

    const-string v1, "objectURI"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lx90;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6
    iget-object p0, p0, Lx90;->b:Ljava/util/List;

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "application/vnd.oma.drm.message"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "application/vnd.oma.drm.content"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "application/vnd.oma.dd+xml"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000

    .line 13
    invoke-static {v0, v4}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 14
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_2
    return-object v2
.end method

.method public static c(Lx90;)J
    .locals 4

    .line 1
    iget-object p0, p0, Lx90;->a:Ljava/util/Map;

    const-string v0, "size"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, ","

    const-string v3, ""

    .line 2
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "OMADownloadHandler"

    const-string v3, "Cannot parse size information."

    .line 3
    invoke-static {p0, v3, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0
.end method


# virtual methods
.method public final a(ILx90;Lorg/chromium/chrome/browser/download/DownloadInfo;Ljava/lang/String;)V
    .locals 1

    .line 28
    new-instance v0, Lr90;

    invoke-direct {v0, p0, p2, p3, p4}, Lr90;-><init>(LB90;Lx90;Lorg/chromium/chrome/browser/download/DownloadInfo;Ljava/lang/String;)V

    .line 29
    new-instance p2, LO8;

    .line 30
    sget-object p3, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    const p4, 0x7f140245

    .line 31
    invoke-direct {p2, p3, p4}, LO8;-><init>(Landroid/content/Context;I)V

    .line 32
    iget-object p3, p2, LO8;->a:LK8;

    iget-object p4, p3, LK8;->a:Landroid/content/Context;

    invoke-virtual {p4, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p3, LK8;->f:Ljava/lang/CharSequence;

    const p1, 0x7f130443

    .line 33
    invoke-virtual {p2, p1, v0}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const/4 p1, 0x0

    .line 34
    iget-object p3, p2, LO8;->a:LK8;

    iput-boolean p1, p3, LK8;->m:Z

    .line 35
    invoke-virtual {p2}, LO8;->b()LP8;

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 17
    iget-object v0, p0, LB90;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, LB90;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 19
    iget-object p1, p0, LB90;->c:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 20
    iget-object p1, p0, LB90;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public final a(Lorg/chromium/chrome/browser/download/DownloadInfo;JILjava/lang/String;)V
    .locals 6

    packed-switch p4, :pswitch_data_0

    :pswitch_0
    const-string p4, "952 Device Aborted \n\r"

    :goto_0
    move-object v5, p4

    goto :goto_1

    :pswitch_1
    const-string p4, "903 Loss of Service \n\r"

    goto :goto_0

    :pswitch_2
    const-string p4, "901 insufficient memory \n\r"

    goto :goto_0

    :pswitch_3
    const-string p4, "954 Loader Error \n\r"

    goto :goto_0

    .line 21
    :goto_1
    iget-object p4, p0, LB90;->d:Landroid/util/LongSparseArray;

    invoke-virtual {p4, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lx90;

    if-nez p4, :cond_1

    .line 22
    new-instance p4, Lx90;

    invoke-direct {p4}, Lx90;-><init>()V

    const-string v0, "installNotifyURI"

    .line 23
    invoke-virtual {p4, v0, p5}, Lx90;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-wide v3, p2

    .line 24
    invoke-virtual/range {v0 .. v5}, LB90;->a(Lx90;Lorg/chromium/chrome/browser/download/DownloadInfo;JLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0, p4}, LB90;->a(Lx90;)V

    :cond_0
    return-void

    :cond_1
    const p5, 0x7f130446

    .line 26
    invoke-virtual {p0, p5, p4, p1, v5}, LB90;->a(ILx90;Lorg/chromium/chrome/browser/download/DownloadInfo;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, LB90;->d:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lx90;)V
    .locals 3

    .line 5
    iget-object v0, p1, Lx90;->a:Ljava/util/Map;

    const-string v1, "nextURL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object p1, p1, Lx90;->a:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    .line 9
    new-instance v1, Ls90;

    invoke-direct {v1, p0, p1, v0}, Ls90;-><init>(LB90;Ljava/lang/String;Landroid/app/Activity;)V

    .line 10
    new-instance v2, Ltc1;

    invoke-direct {v2, v0}, Ltc1;-><init>(Landroid/content/Context;)V

    const v0, 0x7f130457

    .line 11
    invoke-virtual {v2, v0}, LO8;->b(I)LO8;

    const v0, 0x7f130443

    .line 12
    invoke-virtual {v2, v0, v1}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v0, 0x7f1301d4

    .line 13
    invoke-virtual {v2, v0, v1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 14
    iget-object v0, v2, LO8;->a:LK8;

    iput-object p1, v0, LK8;->h:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, v0, LK8;->m:Z

    .line 16
    invoke-virtual {v2}, LO8;->b()LP8;

    return-void
.end method

.method public a(Lx90;Lorg/chromium/chrome/browser/download/DownloadInfo;JLjava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p1, Lx90;->a:Ljava/util/Map;

    const-string v2, "installNotifyURI"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3
    :cond_1
    new-instance v0, Lz90;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lz90;-><init>(LB90;Lx90;Lorg/chromium/chrome/browser/download/DownloadInfo;JLjava/lang/String;)V

    .line 4
    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    const/4 p1, 0x1

    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    const-string p1, "extra_download_id"

    .line 3
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, LB90;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, LB90;->b:Landroid/content/SharedPreferences;

    const-string v4, "PendingOMADownloads"

    .line 6
    invoke-static {v3, v4}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-static {v4}, Lw90;->a(Ljava/lang/String;)Lw90;

    move-result-object v4

    .line 9
    iget-wide v4, v4, Lw90;->a:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_3

    const/4 v1, 0x1

    :cond_4
    if-nez v0, :cond_7

    if-eqz v1, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    iget-object v0, p0, LB90;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/download/DownloadItem;

    if-eqz v0, :cond_6

    .line 11
    new-instance v1, Lp90;

    invoke-direct {v1, v0}, Lp90;-><init>(Lorg/chromium/chrome/browser/download/DownloadItem;)V

    invoke-static {p1, p2, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(JLorg/chromium/base/Callback;)V

    .line 12
    invoke-virtual {p0, p1, p2}, LB90;->a(J)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    const/4 v0, 0x0

    .line 13
    new-instance v1, Lu90;

    invoke-direct {v1, p0, p1, p2, v0}, Lu90;-><init>(LB90;JLjava/lang/String;)V

    invoke-static {p1, p2, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(JLorg/chromium/base/Callback;)V

    return-void
.end method
