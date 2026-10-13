.class public Lorg/chromium/chrome/browser/tab/TrustedCdn;
.super LFH0;
.source "PG"


# static fields
.field public static final A:Ljava/lang/Class;


# instance fields
.field public final x:Lorg/chromium/chrome/browser/tab/Tab;

.field public final y:J

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/tab/TrustedCdn;

    sput-object v0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->A:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, LFH0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-static {p0}, LJ/N;->M1Q9lmqc(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->y:J

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 7
    sget-object v1, Lorg/chromium/chrome/browser/tab/TrustedCdn;->A:Ljava/lang/Class;

    invoke-virtual {p0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p0

    check-cast p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_4

    .line 8
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->x:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->b0()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->x:Lorg/chromium/chrome/browser/tab/Tab;

    .line 11
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 12
    invoke-static {v1}, LfG0;->a(Lorg/chromium/content_public/browser/WebContents;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->z:Ljava/lang/String;

    :cond_4
    :goto_1
    return-object v0
.end method

.method private setPublisherUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->y:J

    .line 5
    invoke-static {v0, v1, p0}, LJ/N;->MM2LHRfv(JLjava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->y:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->M003oy2o(JLjava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->z:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/tab/TrustedCdn;->y:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MyyZwXPU(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
