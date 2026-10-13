.class public final synthetic Ll60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Ln60;

.field public final x:Li20;

.field public final y:Lh20;


# direct methods
.method public constructor <init>(Ln60;Li20;Lh20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll60;->w:Ln60;

    iput-object p2, p0, Ll60;->x:Li20;

    iput-object p3, p0, Ll60;->y:Lh20;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Ll60;->w:Ln60;

    iget-object v1, p0, Ll60;->x:Li20;

    iget-object v2, p0, Ll60;->y:Lh20;

    .line 1
    iget-object v0, v0, Ln60;->g:Lorg/chromium/chrome/browser/browserservices/OriginVerifier;

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iput-object v2, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->f:Lh20;

    .line 4
    iput-object v1, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->e:Li20;

    .line 5
    invoke-static {}, LwT;->c()LwT;

    move-result-object v1

    const-string v4, "disable-digital-asset-link-verification-for-url"

    invoke-virtual {v1, v4}, LwT;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "OriginVerifier"

    const/4 v6, 0x1

    const/4 v10, 0x0

    if-nez v4, :cond_0

    iget-object v4, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->f:Lh20;

    new-instance v7, Lh20;

    invoke-direct {v7, v1}, Lh20;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4, v7}, Lh20;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v10

    const-string v2, "Verification skipped for %s due to command line flag."

    .line 8
    invoke-static {v5, v2, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, Lj20;

    invoke-direct {v2, v0, v6, v3}, Lj20;-><init>(Lorg/chromium/chrome/browser/browserservices/OriginVerifier;ZLjava/lang/Boolean;)V

    invoke-static {v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 10
    :cond_0
    iget-object v1, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->f:Lh20;

    .line 11
    iget-object v1, v1, Lh20;->a:Landroid/net/Uri;

    .line 12
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 14
    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "https"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 15
    :cond_1
    iget-object v1, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->f:Lh20;

    iget v7, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->c:I

    .line 16
    sget-object v8, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 17
    :cond_2
    sget-object v8, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 18
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v10

    const-string v2, "Verification succeeded for %s, it was overridden."

    .line 20
    invoke-static {v5, v2, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, Lj20;

    invoke-direct {v2, v0, v6, v3}, Lj20;-><init>(Lorg/chromium/chrome/browser/browserservices/OriginVerifier;ZLjava/lang/Boolean;)V

    invoke-static {v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 22
    :cond_3
    iget-wide v1, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->d:J

    const-wide/16 v4, 0x0

    cmp-long v7, v1, v4

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a()V

    .line 23
    :cond_4
    invoke-static {v6}, LD01;->a(I)LF01;

    move-result-object v1

    .line 24
    invoke-interface {v1}, LF01;->a()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_4

    .line 25
    :cond_5
    iget-object v1, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->h:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v3, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->h:Lorg/chromium/content_public/browser/WebContents;

    .line 26
    :cond_6
    iget-object v1, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->h:Lorg/chromium/content_public/browser/WebContents;

    .line 27
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    .line 28
    invoke-static {v0, v1, v2}, LJ/N;->MIsZKhfQ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v1

    .line 29
    iput-wide v1, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->d:J

    .line 30
    iget v1, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->c:I

    if-eq v1, v6, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    move-object v9, v3

    goto :goto_2

    :cond_7
    const-string v1, "delegate_permission/common.handle_all_urls"

    goto :goto_1

    :cond_8
    const-string v1, "delegate_permission/common.use_as_origin"

    :goto_1
    move-object v9, v1

    .line 31
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->g:J

    .line 32
    iget-wide v3, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->d:J

    iget-object v6, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->b:Ljava/lang/String;

    iget-object v1, v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->f:Lh20;

    .line 33
    invoke-virtual {v1}, Lh20;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v0

    .line 34
    invoke-static/range {v3 .. v9}, LJ/N;->Mr9N0pbv(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x5

    .line 35
    invoke-static {v1}, LZ10;->a(I)V

    .line 36
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, Lj20;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v0, v10, v3}, Lj20;-><init>(Lorg/chromium/chrome/browser/browserservices/OriginVerifier;ZLjava/lang/Boolean;)V

    invoke-static {v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_9
    :goto_3
    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v10

    const-string v2, "Verification failed for %s as not https."

    .line 37
    invoke-static {v5, v2, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 38
    invoke-static {v1}, LZ10;->a(I)V

    .line 39
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, Lj20;

    invoke-direct {v2, v0, v10, v3}, Lj20;-><init>(Lorg/chromium/chrome/browser/browserservices/OriginVerifier;ZLjava/lang/Boolean;)V

    invoke-static {v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    :cond_a
    :goto_4
    return-void

    .line 40
    :cond_b
    throw v3
.end method
