.class public LcH0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:LdH0;


# direct methods
.method public constructor <init>(LdH0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LcH0;->w:LdH0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public onInitialized(Lorg/chromium/chrome/browser/tab/Tab;LtH0;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, LcH0;->w:LdH0;

    iget-object p2, p2, LtH0;->e:Ljava/lang/String;

    .line 2
    iput-object p2, p1, LdH0;->x:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onLoadUrl(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;I)V
    .locals 0

    .line 1
    iget p1, p2, Lorg/chromium/content_public/browser/LoadUrlParams;->d:I

    const/high16 p2, 0x2000000

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, LcH0;->w:LdH0;

    const/4 p2, 0x0

    .line 3
    iput-object p2, p1, LdH0;->x:Ljava/lang/String;

    :cond_0
    return-void
.end method
