.class public LF10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LKR0;

.field public final synthetic x:LH10;


# direct methods
.method public constructor <init>(LH10;LKR0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LF10;->x:LH10;

    iput-object p2, p0, LF10;->w:LKR0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, LF10;->x:LH10;

    .line 3
    iget-boolean v0, v0, LH10;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, LF10;->w:LKR0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LKR0;->a(Z)V

    return-void
.end method
