.class public final synthetic LqU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LnU0;


# direct methods
.method public constructor <init>(LnU0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LqU0;->w:LnU0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LqU0;->w:LnU0;

    .line 1
    new-instance v1, Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-direct {v1, v0}, Lorg/chromium/components/signin/AccountManagerFacade;-><init>(LnU0;)V

    sput-object v1, Lorg/chromium/components/signin/AccountManagerFacade;->n:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 2
    sget-object v0, Lorg/chromium/components/signin/AccountManagerFacade;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
