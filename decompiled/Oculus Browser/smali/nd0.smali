.class public final Lnd0;
.super LFH0;
.source "PG"


# static fields
.field public static final z:Ljava/lang/Class;


# instance fields
.field public x:LI01;

.field public y:Lkd0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lnd0;

    sput-object v0, Lnd0;->z:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LFH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)Lnd0;
    .locals 3

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 5
    sget-object v1, Lnd0;->z:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, Lnd0;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 7
    sget-object v1, Lnd0;->z:Ljava/lang/Class;

    new-instance v2, Lnd0;

    invoke-direct {v2, p0}, Lnd0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v0, v1, v2}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lnd0;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lnd0;->x:LI01;

    invoke-interface {p1, v0}, LH01;->b(LI01;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lnd0;->x:LI01;

    return-void
.end method

.method public b(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p1

    .line 2
    new-instance v0, Lmd0;

    invoke-direct {v0, p0, p1}, Lmd0;-><init>(Lnd0;LH01;)V

    iput-object v0, p0, Lnd0;->x:LI01;

    .line 3
    invoke-interface {p1, v0}, LH01;->a(LI01;)V

    return-void
.end method
