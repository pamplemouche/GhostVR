.class public Lorg/chromium/chrome/browser/profiles/Profile;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/profiles/Profile;->b:J

    .line 3
    iget-wide p1, p0, Lorg/chromium/chrome/browser/profiles/Profile;->b:J

    .line 4
    invoke-static {p1, p2, p0}, LJ/N;->MEt51B0E(JLjava/lang/Object;)Z

    move-result p1

    .line 5
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/profiles/Profile;->a:Z

    return-void
.end method

.method public static create(J)Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/profiles/Profile;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/profiles/Profile;-><init>(J)V

    return-object v0
.end method

.method public static e()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 2

    .line 1
    sget-boolean v0, Lorg/chromium/chrome/browser/profiles/ProfileManager;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LJ/N;->MSMsclqn()Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lorg/chromium/chrome/browser/profiles/Profile;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Browser hasn\'t finished initialization yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getNativePointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->b:J

    return-wide v0
.end method

.method private onNativeDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->b:J

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->a:Z

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/profiles/Profile;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, LT50;

    invoke-direct {v0}, LT50;-><init>()V

    sget-object v1, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {v0, v1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, LRB;->a:LLB;

    invoke-virtual {v1, v0}, LLB;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MIzCSj22(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lorg/chromium/chrome/browser/profiles/Profile;

    return-object v0
.end method

.method public b()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MD_ez$kP(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lorg/chromium/chrome/browser/profiles/Profile;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MQioXkwA(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/Profile;->b:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MBL3czGJ(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method
