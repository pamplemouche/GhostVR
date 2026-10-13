.class public Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/content_public/browser/RenderFrameHost;


# instance fields
.field public a:J

.field public final b:Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

.field public final c:Z

.field public final d:Lfa1;


# direct methods
.method public constructor <init>(JLorg/chromium/content/browser/framehost/RenderFrameHostDelegate;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->a:J

    .line 3
    iput-object p3, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->b:Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

    .line 4
    iput-boolean p4, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->c:Z

    .line 5
    new-instance p1, Lfa1;

    .line 6
    sget-object p2, LK71;->a:Lj71;

    .line 7
    invoke-interface {p2, p5}, Lj71;->a(I)LF71;

    move-result-object p2

    .line 8
    invoke-interface {p2}, LF71;->B()Lx71;

    move-result-object p2

    invoke-direct {p1, p2}, Lfa1;-><init>(Lx71;)V

    iput-object p1, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->d:Lfa1;

    .line 9
    iget-object p1, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->b:Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

    invoke-interface {p1, p0}, Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;->a(Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;)V

    return-void
.end method

.method private clearNativePtr()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->a:J

    .line 2
    iget-object v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->b:Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;->b(Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;)V

    return-void
.end method

.method public static create(JLorg/chromium/content/browser/framehost/RenderFrameHostDelegate;ZI)Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;
    .locals 7

    .line 1
    new-instance v6, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;-><init>(JLorg/chromium/content/browser/framehost/RenderFrameHostDelegate;ZI)V

    return-object v6
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->c:Z

    return v0
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MfPH28_F(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->M$j92GA1(JLjava/lang/Object;)V

    return-void
.end method

.method public d()Lfa1;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->d:Lfa1;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MBg$jIAu(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
