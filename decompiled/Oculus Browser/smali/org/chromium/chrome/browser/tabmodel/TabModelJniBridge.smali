.class public abstract Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModel;


# static fields
.field public static d:J

.field public static e:I

.field public static f:Z

.field public static g:Z


# instance fields
.field public final a:Z

.field public b:J

.field public c:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    .line 3
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->c:Z

    return-void
.end method

.method private setIndex(I)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-interface {p0, p1, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(II)V

    return-void
.end method


# virtual methods
.method public abstract a(Z)LbI0;
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a:Z

    return v0
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->McKCR2Q3(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/profiles/Profile;

    return-object v0
.end method

.method public abstract closeTabAt(I)Z
.end method

.method public createNewTabForDevTools(Ljava/lang/String;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->a(Z)LbI0;

    move-result-object v1

    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    .line 2
    invoke-direct {v2, p1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v1, v2, p1, v0}, LbI0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    return-object p1
.end method

.method public abstract createTabWithWebContents(Lorg/chromium/chrome/browser/tab/Tab;ZLorg/chromium/content_public/browser/WebContents;)Z
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->b:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->Mg3Aho0E(JLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->b:J

    :cond_0
    return-void
.end method

.method public abstract getCount()I
.end method

.method public abstract getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method public abstract index()I
.end method

.method public abstract isCurrentModel()Z
.end method

.method public abstract isSessionRestoreInProgress()Z
.end method

.method public abstract openNewTab(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;IZZ)V
.end method
