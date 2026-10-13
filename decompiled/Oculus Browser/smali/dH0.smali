.class public final LdH0;
.super LFH0;
.source "PG"

# interfaces
.implements LK01;


# static fields
.field public static final y:Ljava/lang/Class;


# instance fields
.field public x:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LdH0;

    sput-object v0, LdH0;->y:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LFH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    new-instance v0, LcH0;

    invoke-direct {v0, p0}, LcH0;-><init>(LdH0;)V

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, v0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)LdH0;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 2
    sget-object v1, LdH0;->y:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, LdH0;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 4
    sget-object v1, LdH0;->y:Ljava/lang/Class;

    new-instance v2, LdH0;

    invoke-direct {v2, p0}, LdH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v0, v1, v2}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object p0

    move-object v0, p0

    check-cast v0, LdH0;

    :cond_0
    return-object v0
.end method

.method public static b(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;
    .locals 1

    .line 3
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 4
    sget-object v0, LdH0;->y:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, LdH0;

    if-eqz p0, :cond_0

    .line 5
    iget-object p0, p0, LdH0;->x:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    return-void
.end method

.method public b(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0}, LJ01;->a(LK01;)V

    return-void
.end method

.method public b(ZZ)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, LdH0;->x:Ljava/lang/String;

    return-void
.end method
