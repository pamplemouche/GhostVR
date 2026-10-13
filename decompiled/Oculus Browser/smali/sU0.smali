.class public final synthetic LsU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/components/signin/AccountManagerFacade;

.field public final x:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacade;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LsU0;->w:Lorg/chromium/components/signin/AccountManagerFacade;

    iput-object p2, p0, LsU0;->x:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LsU0;->w:Lorg/chromium/components/signin/AccountManagerFacade;

    iget-object v1, p0, LsU0;->x:Lorg/chromium/base/Callback;

    .line 1
    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountManagerFacade;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
