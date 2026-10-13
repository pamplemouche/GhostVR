.class public LOP0;
.super LQP0;
.source "PG"

# interfaces
.implements LLW;


# instance fields
.field public A:Lf61;

.field public final w:Lorg/chromium/content_public/browser/RenderFrameHost;

.field public final x:Lorg/chromium/content_public/browser/WebContents;

.field public y:Z

.field public z:Lf61;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LOP0;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LQP0;-><init>()V

    .line 2
    iput-object p1, p0, LOP0;->w:Lorg/chromium/content_public/browser/RenderFrameHost;

    .line 3
    check-cast p1, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;

    .line 4
    iget-object p1, p1, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->b:Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

    if-eqz p1, :cond_1

    .line 5
    instance-of v0, p1, Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lorg/chromium/content_public/browser/WebContents;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 7
    :goto_1
    iput-object p1, p0, LOP0;->x:Lorg/chromium/content_public/browser/WebContents;

    return-void
.end method


# virtual methods
.method public a(LIW;)V
    .locals 6

    .line 29
    iget-object v0, p0, LOP0;->x:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_0

    check-cast p1, LYW;

    invoke-virtual {p1, v2}, LYW;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v3, "WebAuthentication"

    .line 31
    invoke-static {v3}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    check-cast p1, LYW;

    invoke-virtual {p1, v2}, LYW;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v3, "com.google.android.gms"

    .line 33
    invoke-static {v0, v3}, LYT;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const v5, 0xf73140

    if-lt v4, v5, :cond_3

    .line 34
    invoke-static {}, LPP0;->a()LPP0;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 35
    throw p1

    .line 36
    :cond_3
    invoke-static {v0, v3}, LYT;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const v4, 0xc35000

    if-lt v3, v4, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_5

    const-string v2, "fingerprint"

    .line 37
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_4

    .line 38
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 39
    check-cast p1, LYW;

    invoke-virtual {p1, v0}, LYW;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_5
    check-cast p1, LYW;

    invoke-virtual {p1, v2}, LYW;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(LOX;LJW;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, LOP0;->y:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, LcX;

    invoke-virtual {p2, p1, v1}, LcX;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iput-object p2, p0, LOP0;->z:Lf61;

    .line 4
    iget-object p1, p0, LOP0;->x:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "com.google.android.gms"

    .line 5
    invoke-static {p1, p2}, LYT;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const p2, 0xc35000

    if-ge p1, p2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iput-boolean v0, p0, LOP0;->y:Z

    .line 7
    invoke-static {}, LPP0;->a()LPP0;

    move-result-object p1

    if-eqz p1, :cond_2

    return-void

    .line 8
    :cond_2
    throw v1

    :cond_3
    :goto_0
    const/4 p1, 0x7

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 10
    iget-object p2, p0, LOP0;->z:Lf61;

    if-eqz p2, :cond_4

    .line 11
    invoke-interface {p2, p1, v1}, Lf61;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object p2, p0, LOP0;->A:Lf61;

    if-eqz p2, :cond_5

    .line 13
    invoke-interface {p2, p1, v1}, Lf61;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    :cond_5
    :goto_1
    invoke-virtual {p0}, LOP0;->close()V

    return-void
.end method

.method public a(LRX;LHW;)V
    .locals 2

    .line 15
    iget-boolean p1, p0, LOP0;->y:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, LUW;

    invoke-virtual {p2, p1, v1}, LUW;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 17
    :cond_0
    iput-object p2, p0, LOP0;->A:Lf61;

    .line 18
    iget-object p1, p0, LOP0;->x:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "com.google.android.gms"

    .line 19
    invoke-static {p1, p2}, LYT;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const p2, 0xc35000

    if-ge p1, p2, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    iput-boolean v0, p0, LOP0;->y:Z

    .line 21
    invoke-static {}, LPP0;->a()LPP0;

    move-result-object p1

    if-eqz p1, :cond_2

    return-void

    .line 22
    :cond_2
    throw v1

    :cond_3
    :goto_0
    const/4 p1, 0x7

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 24
    iget-object p2, p0, LOP0;->z:Lf61;

    if-eqz p2, :cond_4

    .line 25
    invoke-interface {p2, p1, v1}, Lf61;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 26
    :cond_4
    iget-object p2, p0, LOP0;->A:Lf61;

    if-eqz p2, :cond_5

    .line 27
    invoke-interface {p2, p1, v1}, Lf61;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :cond_5
    :goto_1
    invoke-virtual {p0}, LOP0;->close()V

    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, LOP0;->close()V

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LOP0;->y:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LOP0;->z:Lf61;

    .line 3
    iput-object v0, p0, LOP0;->A:Lf61;

    return-void
.end method
