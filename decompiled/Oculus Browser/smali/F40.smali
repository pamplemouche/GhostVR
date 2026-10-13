.class public LF40;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lle1;

.field public b:LH40;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LF40;->c:Landroid/content/Context;

    .line 3
    iget-object v0, p2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->d:Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->c:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->c:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_1
    iget-boolean v0, p2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->i:Z

    if-nez v0, :cond_3

    .line 10
    iget-boolean v0, p2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->j:Z

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->f:Ljava/lang/String;

    .line 13
    invoke-static {v0, v2, v2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_1
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->a()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_6

    .line 16
    invoke-static {}, LFl0;->a()LIl0;

    move-result-object v3

    invoke-interface {v3}, LIl0;->b()Z

    move-result v3

    xor-int/2addr v3, v5

    .line 17
    instance-of v4, p1, LOY;

    if-eqz v4, :cond_4

    .line 18
    move-object v3, p1

    check-cast v3, LOY;

    .line 19
    iget-object v3, v3, LOY;->J:LIl0;

    .line 20
    invoke-interface {v3}, LIl0;->b()Z

    move-result v3

    xor-int/2addr v3, v5

    :cond_4
    move v11, v3

    .line 21
    new-instance v3, Landroid/text/SpannableString;

    .line 22
    iget-object v4, p2, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->b:Ljava/lang/String;

    .line 23
    invoke-static {v4}, LY30;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 24
    invoke-static {p2}, LY30;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Ljava/lang/String;

    move-result-object v1

    .line 25
    :cond_5
    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 27
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    .line 28
    invoke-static/range {v6 .. v12}, Lwp0;->a(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V

    .line 29
    :cond_6
    sget-object v1, LI40;->h:[LUd1;

    .line 30
    invoke-static {v1}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v1

    .line 31
    sget-object v4, LI40;->a:Lke1;

    .line 32
    new-instance v6, Lbe1;

    invoke-direct {v6, v2}, Lbe1;-><init>(LVd1;)V

    .line 33
    iput-object v0, v6, Lbe1;->a:Ljava/lang/Object;

    .line 34
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v4, LI40;->b:Lje1;

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    goto :goto_2

    :cond_7
    const/4 v6, 0x1

    .line 37
    :goto_2
    new-instance v8, LZd1;

    invoke-direct {v8, v2}, LZd1;-><init>(LVd1;)V

    .line 38
    iput v6, v8, LZd1;->a:I

    .line 39
    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v4, LI40;->c:Lke1;

    .line 41
    new-instance v6, Lbe1;

    invoke-direct {v6, v2}, Lbe1;-><init>(LVd1;)V

    .line 42
    iput-object v3, v6, Lbe1;->a:Ljava/lang/Object;

    .line 43
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v3, LI40;->e:Lje1;

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v5, 0x2

    .line 46
    :cond_8
    new-instance v0, LZd1;

    invoke-direct {v0, v2}, LZd1;-><init>(LVd1;)V

    .line 47
    iput v5, v0, LZd1;->a:I

    .line 48
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, LI40;->f:Lke1;

    .line 50
    new-instance v3, Lbe1;

    invoke-direct {v3, v2}, Lbe1;-><init>(LVd1;)V

    .line 51
    iput-object v2, v3, Lbe1;->a:Ljava/lang/Object;

    .line 52
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, LI40;->g:Lhe1;

    const/4 v3, 0x0

    .line 54
    new-instance v4, LWd1;

    invoke-direct {v4, v2}, LWd1;-><init>(LVd1;)V

    .line 55
    iput-boolean v3, v4, LWd1;->a:Z

    .line 56
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lle1;

    invoke-direct {v0, v1, v2}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 58
    iput-object v0, p0, LF40;->a:Lle1;

    .line 59
    new-instance v1, LH40;

    invoke-direct {v1, p1, v0, p2}, LH40;-><init>(Landroid/content/Context;Lle1;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)V

    iput-object v1, p0, LF40;->b:LH40;

    return-void
.end method
