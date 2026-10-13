.class public final synthetic LKa0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LLa0;


# direct methods
.method public constructor <init>(LLa0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKa0;->w:LLa0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LKa0;->w:LLa0;

    .line 1
    iget-object v1, v0, LLa0;->x:Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v1, v0, LLa0;->A:Z

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, LLa0;->a(I)V

    .line 4
    iget-object v1, v0, LLa0;->w:Lgw;

    check-cast v1, Luy;

    .line 5
    iget-object v2, v1, Luy;->b:LYw;

    invoke-virtual {v2}, LYw;->a()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FeedAppLifecycleLstnr"

    const-string v4, "initialize called"

    .line 6
    invoke-static {v3, v4, v2}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "initialize"

    .line 7
    invoke-virtual {v1, v2}, Luy;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, LLa0;->A:Z

    :cond_0
    return-void
.end method
