.class public final synthetic LUM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LWM0;


# direct methods
.method public constructor <init>(LWM0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUM0;->w:LWM0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LUM0;->w:LWM0;

    .line 1
    iget-object v0, v0, LWM0;->e:LXM0;

    iget-object v1, v0, LXM0;->B:Ljava/util/List;

    check-cast v0, LOz0;

    const/4 v2, 0x0

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LHz0;

    .line 5
    iget-object v5, v5, LHz0;->a:Ljava/lang/String;

    .line 6
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, LTz0;->b()LTz0;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {v1, v3}, LJ/N;->M4wHIemP(Ljava/lang/Object;[Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 10
    invoke-static {v1}, LTz0;->a(I)V

    .line 11
    iget-object v0, v0, LBg;->w:LCg;

    invoke-virtual {v0}, LCg;->b()V

    return-void

    .line 12
    :cond_1
    throw v2

    .line 13
    :cond_2
    throw v2
.end method
