.class public Lorg/chromium/chrome/browser/download/DownloadNotificationServiceObserver;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk80;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, LV80;->a:LW80;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, LW80;->a()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public b()V
    .locals 15

    .line 1
    sget-object v13, LV80;->a:LW80;

    .line 2
    invoke-virtual {v13}, LW80;->a()V

    .line 3
    iget-object v0, v13, LW80;->d:Lh90;

    .line 4
    iget-object v0, v0, Lh90;->a:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld90;

    .line 6
    iget-boolean v1, v0, Ld90;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Ld90;->f:LbU0;

    iget-object v2, v0, Ld90;->d:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v6, v0, Ld90;->g:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v0, v13

    invoke-virtual/range {v0 .. v12}, LW80;->a(LbU0;Ljava/lang/String;ZZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZZZI)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "ResumptionAttemptLeft"

    const/4 v2, 0x5

    .line 9
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lb90;->c()Lb90;

    move-result-object v0

    invoke-virtual {v0}, Lb90;->b()V

    :goto_1
    return-void
.end method
