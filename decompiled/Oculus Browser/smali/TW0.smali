.class public LTW0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/content/browser/TtsPlatformImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/TtsPlatformImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTW0;->a:Lorg/chromium/content/browser/TtsPlatformImpl;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    const-string v0, "TtsPlatformImpl:initialize.async_task"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 5
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_1
    iget-object v6, p0, LTW0;->a:Lorg/chromium/content/browser/TtsPlatformImpl;

    iget-object v6, v6, Lorg/chromium/content/browser/TtsPlatformImpl;->x:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v6, v5}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v6

    if-lez v6, :cond_2

    .line 7
    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10
    :cond_1
    new-instance v7, LVW0;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {v7, v6, v5, v8}, LVW0;-><init>(Ljava/lang/String;Ljava/lang/String;LSW0;)V

    .line 11
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 12
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :cond_4
    return-object v2

    :catchall_0
    move-exception v1

    .line 13
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_5

    .line 14
    :try_start_3
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 15
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 16
    :cond_5
    :goto_2
    throw v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, LTW0;->a:Lorg/chromium/content/browser/TtsPlatformImpl;

    .line 3
    iput-object p1, v0, Lorg/chromium/content/browser/TtsPlatformImpl;->z:Ljava/util/List;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lorg/chromium/content/browser/TtsPlatformImpl;->y:Z

    .line 5
    iget-wide v1, v0, Lorg/chromium/content/browser/TtsPlatformImpl;->w:J

    .line 6
    invoke-static {v1, v2, v0}, LJ/N;->MpJkwIUo(JLjava/lang/Object;)V

    .line 7
    iget-object p1, p0, LTW0;->a:Lorg/chromium/content/browser/TtsPlatformImpl;

    .line 8
    iget-object p1, p1, Lorg/chromium/content/browser/TtsPlatformImpl;->B:LUW0;

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p1, LUW0;->a:Lorg/chromium/content/browser/TtsPlatformImpl;

    iget v1, p1, LUW0;->b:I

    iget-object v2, p1, LUW0;->c:Ljava/lang/String;

    iget-object v3, p1, LUW0;->d:Ljava/lang/String;

    iget v4, p1, LUW0;->e:F

    iget v5, p1, LUW0;->f:F

    iget v6, p1, LUW0;->g:F

    invoke-static/range {v0 .. v6}, Lorg/chromium/content/browser/TtsPlatformImpl;->a(Lorg/chromium/content/browser/TtsPlatformImpl;ILjava/lang/String;Ljava/lang/String;FFF)Z

    :cond_0
    const-string p1, "TtsPlatformImpl:initialize"

    .line 10
    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method
