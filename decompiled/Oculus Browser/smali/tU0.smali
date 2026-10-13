.class public final synthetic LtU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/components/signin/AccountManagerFacade;

.field public final x:Lorg/chromium/base/Callback;

.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacade;Lorg/chromium/base/Callback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LtU0;->w:Lorg/chromium/components/signin/AccountManagerFacade;

    iput-object p2, p0, LtU0;->x:Lorg/chromium/base/Callback;

    iput-object p3, p0, LtU0;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LtU0;->w:Lorg/chromium/components/signin/AccountManagerFacade;

    iget-object v1, p0, LtU0;->x:Lorg/chromium/base/Callback;

    iget-object v2, p0, LtU0;->y:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, v2}, Lorg/chromium/components/signin/AccountManagerFacade;->b(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
