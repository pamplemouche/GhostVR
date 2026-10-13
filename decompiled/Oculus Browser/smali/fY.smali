.class public abstract LfY;
.super LSG0;
.source "PG"


# instance fields
.field public final w:LgY;

.field public final x:LdY;

.field public y:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LfY;->w:LgY;

    .line 3
    new-instance v1, LeY;

    invoke-direct {v1, p0}, LeY;-><init>(LfY;)V

    iput-object v1, p0, LfY;->x:LdY;

    .line 4
    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, LfY;->y:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 3
    iput-object v1, p0, LfY;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 4
    :cond_0
    throw v1
.end method
