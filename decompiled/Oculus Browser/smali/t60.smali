.class public Lt60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlH0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeActivity;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:LQG0;

.field public final g:Lja0;

.field public final h:Lpl0;

.field public i:Lwa0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;ZZZZLQG0;Lja0;Lpl0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt60;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    iput-boolean p2, p0, Lt60;->b:Z

    .line 4
    iput-boolean p3, p0, Lt60;->c:Z

    .line 5
    iput-boolean p4, p0, Lt60;->d:Z

    .line 6
    iput-boolean p5, p0, Lt60;->e:Z

    .line 7
    iput-object p6, p0, Lt60;->f:LQG0;

    .line 8
    iput-object p7, p0, Lt60;->g:Lja0;

    .line 9
    iput-object p8, p0, Lt60;->h:Lpl0;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
    .locals 7

    .line 1
    new-instance v6, Ls60;

    iget-object v2, p0, Lt60;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    iget-object v3, p0, Lt60;->h:Lpl0;

    iget-boolean v4, p0, Lt60;->e:Z

    iget-boolean v5, p0, Lt60;->d:Z

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ls60;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/ChromeActivity;Lpl0;ZZ)V

    return-object v6
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lt60;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Lorg/chromium/chrome/browser/tab/Tab;)Lxa0;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lt60;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lwa0;

    invoke-direct {v0, p1}, Lwa0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    iput-object v0, p0, Lt60;->i:Lwa0;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lr60;

    .line 4
    invoke-static {p1}, LdH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lt60;->g:Lja0;

    invoke-direct {v0, p1, v1, v2}, Lr60;-><init>(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;Lja0;)V

    iput-object v0, p0, Lt60;->i:Lwa0;

    .line 5
    :goto_0
    new-instance p1, Lxa0;

    iget-object v0, p0, Lt60;->i:Lwa0;

    invoke-direct {p1, v0}, Lxa0;-><init>(Lpa0;)V

    return-object p1
.end method

.method public c(Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;
    .locals 2

    .line 1
    new-instance v0, LY30;

    new-instance v1, LjH0;

    invoke-direct {v1, p1}, LjH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, LY30;-><init>(Ll40;I)V

    return-object v0
.end method

.method public d(Lorg/chromium/chrome/browser/tab/Tab;)LQG0;
    .locals 4

    .line 1
    new-instance v0, Lq60;

    invoke-direct {v0, p0, p1}, Lq60;-><init>(Lt60;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iget-object p1, p0, Lt60;->f:LQG0;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcd0;

    const/4 v2, 0x2

    new-array v2, v2, [LQG0;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-direct {v1, v2}, Lcd0;-><init>([LQG0;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
