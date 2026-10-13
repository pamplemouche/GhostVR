.class public Lyn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lvn0;
.implements LXF0;
.implements LlT;


# static fields
.field public static i:Lyn0;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lwn0;

.field public e:Lorg/chromium/chrome/browser/ChromeActivity;

.field public f:Z

.field public g:J

.field public h:LAn0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lyn0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, LAn0;

    invoke-direct {v0}, LAn0;-><init>()V

    iput-object v0, p0, Lyn0;->h:LAn0;

    .line 4
    :cond_0
    new-instance v0, Lwn0;

    invoke-direct {v0, p0}, Lwn0;-><init>(Lvn0;)V

    iput-object v0, p0, Lyn0;->d:Lwn0;

    .line 5
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v0, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a()Z
    .locals 3

    const-string v0, "OfflineIndicator"

    const-string v1, "bottom_offline_indicator"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 3
    iput-boolean v1, p0, Lyn0;->b:Z

    :cond_0
    if-ne p1, v0, :cond_3

    .line 4
    iget-object p1, p0, Lyn0;->d:Lwn0;

    if-eqz p1, :cond_2

    .line 5
    sget-object v2, Lorg/chromium/net/NetworkChangeNotifier;->f:Lorg/chromium/net/NetworkChangeNotifier;

    .line 6
    invoke-virtual {v2}, Lorg/chromium/net/NetworkChangeNotifier;->getCurrentConnectionType()I

    move-result v2

    invoke-virtual {p1, v2}, Lwn0;->a(I)V

    .line 7
    iget-object p1, p0, Lyn0;->d:Lwn0;

    .line 8
    iget p1, p1, Lwn0;->z:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Lyn0;->a(Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 10
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lyn0;->a:Z

    return-void
.end method

.method public final a(Z)V
    .locals 8

    .line 11
    iget-boolean v0, p0, Lyn0;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    .line 12
    iput-boolean v2, p0, Lyn0;->c:Z

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lyn0;->g:J

    goto :goto_1

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lyn0;->g:J

    sub-long/2addr v3, v5

    const/16 v0, 0x14

    const-string v5, "OfflineIndicator"

    const-string v6, "stable_offline_wait_s"

    .line 15
    invoke-static {v5, v6, v0}, LJ/N;->MtxS41zR(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput-boolean v0, p0, Lyn0;->c:Z

    .line 17
    :goto_1
    iput-boolean p1, p0, Lyn0;->f:Z

    .line 18
    :cond_2
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    if-eq v0, v1, :cond_3

    return-void

    .line 19
    :cond_3
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    if-nez v0, :cond_4

    return-void

    .line 20
    :cond_4
    instance-of v3, v0, Lorg/chromium/chrome/browser/ChromeActivity;

    if-nez v3, :cond_5

    return-void

    .line 21
    :cond_5
    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 22
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->C()LZF0;

    move-result-object v3

    if-nez v3, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_9

    .line 23
    iget-boolean p1, p0, Lyn0;->a:Z

    if-nez p1, :cond_7

    goto/16 :goto_8

    .line 24
    :cond_7
    invoke-static {}, Lyn0;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 25
    iget-object p1, p0, Lyn0;->h:LAn0;

    .line 26
    invoke-virtual {p1, v2}, LAn0;->b(Z)V

    goto/16 :goto_8

    .line 27
    :cond_8
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->C()LZF0;

    move-result-object p1

    invoke-virtual {p1, p0}, LZF0;->a(LXF0;)V

    goto/16 :goto_8

    .line 28
    :cond_9
    iget-boolean p1, p0, Lyn0;->a:Z

    if-nez p1, :cond_18

    .line 29
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_2

    .line 30
    :cond_a
    iget-boolean v3, p1, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    if-eqz v3, :cond_b

    goto :goto_2

    .line 31
    :cond_b
    invoke-static {p1}, Lmn0;->b(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_2

    .line 32
    :cond_c
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v3, "about:blank"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_d
    const/4 p1, 0x1

    :goto_3
    if-nez p1, :cond_e

    goto/16 :goto_8

    .line 33
    :cond_e
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_4

    .line 34
    :cond_f
    iget-object v3, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v3, :cond_10

    .line 35
    invoke-interface {v3}, Lorg/chromium/content_public/browser/WebContents;->e()Z

    move-result v3

    if-nez v3, :cond_10

    :goto_4
    const/4 p1, 0x0

    goto :goto_6

    .line 36
    :cond_10
    iget-object v3, p0, Lyn0;->e:Lorg/chromium/chrome/browser/ChromeActivity;

    if-ne v3, v0, :cond_11

    goto :goto_5

    .line 37
    :cond_11
    iput-object v0, p0, Lyn0;->e:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 38
    new-instance v3, Lxn0;

    invoke-direct {v3, p0}, Lxn0;-><init>(Lyn0;)V

    .line 39
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, v3}, LWT;->a(Ljava/lang/Object;)Z

    :goto_5
    const/4 p1, 0x1

    :goto_6
    if-eqz p1, :cond_12

    goto/16 :goto_8

    .line 40
    :cond_12
    iget-boolean p1, p0, Lyn0;->b:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lyn0;->c:Z

    if-nez p1, :cond_13

    goto/16 :goto_8

    :cond_13
    const p1, 0x7f080200

    .line 41
    invoke-static {v0, p1}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const v3, 0x7f13043d

    .line 42
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x19

    invoke-static {v3, p0, v2, v4}, LUF0;->a(Ljava/lang/CharSequence;LXF0;II)LUF0;

    move-result-object v3

    .line 43
    iput-boolean v1, v3, LUF0;->h:Z

    .line 44
    iput-object p1, v3, LUF0;->j:Landroid/graphics/drawable/Drawable;

    const/high16 p1, -0x1000000

    .line 45
    iput p1, v3, LUF0;->f:I

    const p1, 0x7f14021b

    .line 46
    iput p1, v3, LUF0;->g:I

    const/16 p1, 0x2710

    .line 47
    iput p1, v3, LUF0;->i:I

    const p1, 0x7f13043e

    .line 48
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 49
    iput-object p1, v3, LUF0;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 50
    iput-object p1, v3, LUF0;->e:Ljava/lang/Object;

    .line 51
    invoke-static {}, Lyn0;->a()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_17

    .line 52
    iget-object v4, p0, Lyn0;->h:LAn0;

    .line 53
    iget-object v6, v4, LAn0;->z:LUF0;

    if-eqz v6, :cond_14

    goto :goto_7

    .line 54
    :cond_14
    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result v6

    if-eq v6, v5, :cond_15

    const/4 v7, 0x3

    if-eq v6, v7, :cond_15

    goto :goto_7

    .line 55
    :cond_15
    iput-object v0, v4, LAn0;->y:Landroid/app/Activity;

    .line 56
    iput-object v3, v4, LAn0;->z:LUF0;

    .line 57
    new-instance v6, LBn0;

    invoke-direct {v6, v0, v4, v3, p1}, LBn0;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;LUF0;Landroid/view/ViewGroup;)V

    iput-object v6, v4, LAn0;->A:LBn0;

    .line 58
    invoke-virtual {v6}, LdG0;->e()V

    .line 59
    iget-object p1, v4, LAn0;->A:LBn0;

    invoke-virtual {p1}, LBn0;->a()V

    .line 60
    iget-object p1, v4, LAn0;->w:Landroid/os/Handler;

    iget-object v3, v4, LAn0;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    iget-object p1, v4, LAn0;->w:Landroid/os/Handler;

    iget-object v3, v4, LAn0;->x:Ljava/lang/Runnable;

    iget-object v6, v4, LAn0;->z:LUF0;

    .line 62
    iget v6, v6, LUF0;->i:I

    int-to-long v6, v6

    .line 63
    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object p1

    .line 65
    iget-object v3, p1, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object p1, p1, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_16
    invoke-static {v4, v0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;Landroid/app/Activity;)V

    goto :goto_7

    .line 67
    :cond_17
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->C()LZF0;

    move-result-object p1

    .line 68
    invoke-virtual {p1, v3}, LZF0;->a(LUF0;)V

    :goto_7
    const-string p1, "OfflineIndicator.CTR"

    .line 69
    invoke-static {p1, v2, v5}, LfV;->a(Ljava/lang/String;II)V

    .line 70
    iput-boolean v1, p0, Lyn0;->a:Z

    .line 71
    iput-boolean v1, p0, Lyn0;->b:Z

    :cond_18
    :goto_8
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lyn0;->a:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 2
    invoke-static {v0, v0, v1, p1}, Lorg/chromium/chrome/browser/download/DownloadUtils;->showDownloadManager(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;IZ)Z

    const/4 v0, 0x2

    const-string v1, "OfflineIndicator.CTR"

    .line 3
    invoke-static {v1, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method
