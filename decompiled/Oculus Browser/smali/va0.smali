.class public Lva0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/content_public/browser/LoadUrlParams;

.field public final synthetic x:Lwa0;


# direct methods
.method public constructor <init>(Lwa0;Lorg/chromium/content_public/browser/LoadUrlParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lva0;->x:Lwa0;

    iput-object p2, p0, Lva0;->w:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lva0;->x:Lwa0;

    .line 2
    iget-boolean v1, v0, Lwa0;->mIsTabDestroyed:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Lwa0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    iget-object v1, p0, Lva0;->w:Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    :cond_0
    return-void
.end method
