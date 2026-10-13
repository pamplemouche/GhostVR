.class public Lnc0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:Lwc0;


# direct methods
.method public constructor <init>(Lwc0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnc0;->w:Lwc0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosingStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lnc0;->w:Lwc0;

    invoke-virtual {p1}, Lwc0;->c()V

    :cond_0
    return-void
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lnc0;->w:Lwc0;

    invoke-virtual {p1}, Lwc0;->c()V

    return-void
.end method

.method public onFindMatchRectsAvailable(Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnc0;->w:Lwc0;

    .line 2
    iget-object v1, v0, Lwc0;->C:Lkc0;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v1}, Lze;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    iget-object v0, v0, Lwc0;->C:Lkc0;

    iget v1, p1, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->a:I

    iget-object v2, p1, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->b:[Landroid/graphics/RectF;

    iget-object p1, p1, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, p1}, Lkc0;->a(I[Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, v0, Lwc0;->C:Lkc0;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 6
    invoke-virtual {p1, v2, v0, v1}, Lkc0;->a(I[Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method public onFindResultAvailable(Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lnc0;->w:Lwc0;

    .line 2
    iget-object v1, v0, Lwc0;->C:Lkc0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v1, Lkc0;->U:Z

    .line 3
    :cond_0
    iget v1, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->c:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    iget v1, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->a:I

    if-ne v1, v4, :cond_2

    :cond_1
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->d:Z

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 4
    :cond_2
    iget-boolean v1, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->d:Z

    if-eqz v1, :cond_5

    .line 5
    iget v1, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->a:I

    if-lez v1, :cond_4

    .line 6
    iget-object v1, v0, Lwc0;->J:Lgc0;

    .line 7
    iget-object v5, v0, Lwc0;->C:Lkc0;

    if-eqz v5, :cond_3

    iget v3, v5, Lkc0;->L:I

    .line 8
    :cond_3
    iget-wide v5, v1, Lgc0;->a:J

    .line 9
    invoke-static {v5, v6, v1, v3}, LJ/N;->MV3tOyr$(JLjava/lang/Object;I)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v0}, Lwc0;->b()V

    .line 11
    :goto_0
    iget-object v1, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lwc0;->a(Landroid/graphics/Rect;)V

    .line 12
    :cond_5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f13031b

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget v8, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->c:I

    .line 14
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget v8, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 15
    invoke-virtual {v3, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 16
    iget v5, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->a:I

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v3, v5}, Lwc0;->a(Ljava/lang/String;Z)V

    .line 17
    iget v3, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->a:I

    if-lez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lwc0;->c(Z)V

    .line 18
    iget v3, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->c:I

    .line 19
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->a:I

    .line 20
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    if-lez v5, :cond_8

    .line 21
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f130125

    new-array v6, v6, [Ljava/lang/Object;

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    .line 23
    invoke-virtual {v7, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 24
    :cond_8
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f130126

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 25
    :goto_3
    iget-object v5, v0, Lwc0;->w:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    iget-boolean v5, v0, Lwc0;->S:Z

    if-eqz v5, :cond_9

    goto :goto_4

    .line 27
    :cond_9
    iget-object v5, v0, Lwc0;->R:Ljava/lang/Runnable;

    if-eqz v5, :cond_a

    .line 28
    iget-object v6, v0, Lwc0;->Q:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    :cond_a
    new-instance v5, Lmc0;

    invoke-direct {v5, v0, v3}, Lmc0;-><init>(Lwc0;Ljava/lang/String;)V

    iput-object v5, v0, Lwc0;->R:Ljava/lang/Runnable;

    .line 30
    iget-object v3, v0, Lwc0;->Q:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    :goto_4
    iget v3, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->a:I

    if-nez v3, :cond_c

    iget-boolean p1, p1, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->d:Z

    if-eqz p1, :cond_c

    iget-object p1, v0, Lwc0;->J:Lgc0;

    .line 32
    iget-wide v5, p1, Lgc0;->a:J

    .line 33
    invoke-static {v5, v6, p1}, LJ/N;->MsReT$HQ(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, v0, Lwc0;->x:Lorg/chromium/chrome/browser/findinpage/FindToolbar$FindQuery;

    .line 35
    invoke-virtual {v0}, Lze;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "haptic_feedback_enabled"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_b

    const/4 v2, 0x1

    :cond_b
    if-eqz v2, :cond_c

    const-string p1, "vibrator"

    .line 38
    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_c
    :goto_5
    return-void
.end method

.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lnc0;->w:Lwc0;

    invoke-virtual {p1}, Lwc0;->c()V

    return-void
.end method
