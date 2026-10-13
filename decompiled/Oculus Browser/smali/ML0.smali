.class public LML0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:LPL0;


# direct methods
.method public synthetic constructor <init>(LPL0;LLL0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LML0;->a:LPL0;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/traces"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 5
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd-HHmmss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "UTC"

    .line 6
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chrome-trace-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 8
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json.gz"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "TracingController"

    const-string v2, "Couldn\'t create chrome-trace temp file: %s"

    invoke-static {v0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Ljava/io/File;

    const/4 v0, 0x1

    const-string v1, "Error occurred while recording Chrome trace, see log for details."

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, LML0;->a:LPL0;

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1, v1, v2}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 6
    iget-object p1, p0, LML0;->a:LPL0;

    .line 7
    invoke-virtual {p1, v0}, LPL0;->a(I)V

    goto :goto_0

    .line 8
    :cond_0
    throw v3

    .line 9
    :cond_1
    iget-object v3, p0, LML0;->a:LPL0;

    .line 10
    iput-object p1, v3, LPL0;->e:Ljava/io/File;

    .line 11
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->P()Ljava/util/Set;

    move-result-object p1

    const-string v4, ","

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->Q()Ljava/lang/String;

    move-result-object v9

    .line 13
    iget-object v5, v3, LPL0;->a:LY01;

    iget-object p1, v3, LPL0;->e:Ljava/io/File;

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 15
    invoke-interface/range {v5 .. v10}, LY01;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v4, "TracingController"

    const-string v5, "Native error while trying to start tracing"

    .line 16
    invoke-static {v4, v5, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 18
    invoke-static {p1, v1, v2}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p1

    .line 19
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 20
    invoke-virtual {v3, v0}, LPL0;->a(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 21
    invoke-virtual {v3, p1}, LPL0;->a(I)V

    .line 22
    iget v0, v3, LPL0;->c:I

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    iget-object p1, v3, LPL0;->a:LY01;

    new-instance v0, LHL0;

    invoke-direct {v0, v3}, LHL0;-><init>(LPL0;)V

    invoke-interface {p1, v0}, LY01;->a(Lorg/chromium/base/Callback;)Z

    :goto_0
    return-void
.end method
