.class public final synthetic LiV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LnV0;

.field public final x:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(LnV0;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LiV0;->w:LnV0;

    iput-object p2, p0, LiV0;->x:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LiV0;->w:LnV0;

    iget-object v1, p0, LiV0;->x:Lorg/chromium/base/Callback;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v2

    new-instance v3, LjV0;

    invoke-direct {v3, v0, v1}, LjV0;-><init>(LnV0;Lorg/chromium/base/Callback;)V

    invoke-virtual {v2, v3}, Lorg/chromium/components/signin/AccountManagerFacade;->b(Lorg/chromium/base/Callback;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
