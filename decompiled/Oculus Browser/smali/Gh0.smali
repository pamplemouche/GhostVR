.class public LGh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LHh0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, LKc0;->a(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    new-instance v1, LFh0;

    invoke-direct {v1, p0}, LFh0;-><init>(LGh0;)V

    invoke-virtual {v0, v1}, Lorg/chromium/components/signin/AccountManagerFacade;->a(LFU0;)V

    return-void
.end method
