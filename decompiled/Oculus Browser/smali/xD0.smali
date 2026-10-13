.class public final synthetic LxD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LxD0;

    invoke-direct {v0}, LxD0;-><init>()V

    sput-object v0, LxD0;->w:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, LHE0;->a()Lorg/chromium/components/signin/AccountTrackerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/components/signin/AccountTrackerService;->a(Z)V

    .line 2
    invoke-static {}, LpF0;->b()LpF0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v1

    new-instance v2, LkF0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, LkF0;-><init>(LpF0;Z)V

    invoke-virtual {v1, v2}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
