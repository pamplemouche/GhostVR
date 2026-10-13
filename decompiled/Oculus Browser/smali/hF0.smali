.class public LhF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LmE0;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:LjF0;


# direct methods
.method public constructor <init>(LjF0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LhF0;->b:LjF0;

    iput-boolean p2, p0, LhF0;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 9
    iget-object v0, p0, LhF0;->b:LjF0;

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, LjF0;->O0:LuE0;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, LjF0;->I0:Z

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LhF0;->b:LjF0;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, LjF0;->O0:LuE0;

    .line 3
    iget-boolean v0, v0, LjF0;->H0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    new-instance p1, LnU;

    invoke-direct {p1}, LnU;-><init>()V

    .line 5
    new-instance v0, LS10;

    invoke-direct {v0}, LS10;-><init>()V

    .line 6
    new-instance v1, LvG0;

    invoke-direct {v1, v0, p1}, LvG0;-><init>(LS10;LnU;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->a(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1}, LnU;->b(Ljava/lang/Object;)LnU;

    move-result-object p1

    .line 8
    :goto_0
    new-instance v0, LfF0;

    iget-boolean v1, p0, LhF0;->a:Z

    invoke-direct {v0, p0, v1}, LfF0;-><init>(LhF0;Z)V

    invoke-virtual {p1, v0}, LnU;->b(Lorg/chromium/base/Callback;)V

    return-void
.end method
