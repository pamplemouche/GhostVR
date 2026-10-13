.class public Lorg/chromium/components/signin/identitymanager/IdentityManager;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public final b:LWT;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->b:LWT;

    .line 3
    iput-wide p1, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->a:J

    return-void
.end method

.method public static create(J)Lorg/chromium/components/signin/identitymanager/IdentityManager;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/signin/identitymanager/IdentityManager;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/signin/identitymanager/IdentityManager;-><init>(J)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->a:J

    return-void
.end method

.method private onPrimaryAccountSet(Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LeV0;

    .line 2
    invoke-interface {v1, p1}, LeV0;->a(Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onPrimaryAccountCleared(Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/components/signin/identitymanager/IdentityManager;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LeV0;

    .line 2
    invoke-interface {v1, p1}, LeV0;->b(Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
