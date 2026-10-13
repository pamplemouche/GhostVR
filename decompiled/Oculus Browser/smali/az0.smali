.class public Laz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lbz0;


# direct methods
.method public constructor <init>(Lbz0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laz0;->a:Lbz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lju0;

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    iget-wide v3, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 6
    invoke-static {v3, v4, v0, v1}, LJ/N;->MgzFcfQz(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    invoke-static {}, LNv0;->a()LNv0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v1, LNv0;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LMv0;

    .line 9
    sget-object v3, LZ01;->a:LFW;

    new-instance v4, LIv0;

    invoke-direct {v4, v0, v2, p1}, LIv0;-><init>(LNv0;LMv0;Lju0;)V

    const-wide/16 v5, 0x0

    .line 10
    invoke-static {v3, v4, v5, v6}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 11
    :cond_0
    throw v2

    .line 12
    :cond_1
    throw v2

    :cond_2
    return-void
.end method
