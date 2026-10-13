.class public Lj60;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/util/concurrent/FutureTask;

.field public c:Lg60;

.field public d:Ld60;

.field public final e:LWT;


# direct methods
.method public synthetic constructor <init>(Le60;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj60;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Ld60;

    invoke-direct {p1}, Ld60;-><init>()V

    iput-object p1, p0, Lj60;->d:Ld60;

    .line 4
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, Lj60;->e:LWT;

    return-void
.end method


# virtual methods
.method public a(Z)Lg60;
    .locals 4

    .line 5
    iget-object v0, p0, Lj60;->c:Lg60;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lj60;->a()V

    .line 7
    :try_start_0
    iget-object p1, p0, Lj60;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg60;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-object v0, p0, Lj60;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_1
    iget-object v1, p0, Lj60;->c:Lg60;

    if-nez v1, :cond_0

    .line 10
    iput-object p1, p0, Lj60;->c:Lg60;

    .line 11
    sget-object p1, LZ01;->a:LFW;

    new-instance v1, Le60;

    invoke-direct {v1, p0}, Le60;-><init>(Lj60;)V

    const-wide/16 v2, 0x0

    .line 12
    invoke-static {p1, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 13
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 16
    :cond_1
    :goto_0
    iget-object p1, p0, Lj60;->c:Lg60;

    return-object p1
.end method

.method public a(I)Ljavax/crypto/Cipher;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lj60;->a(Z)Lg60;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 2
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lg60;->a:Ljava/security/Key;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v0, v0, Lg60;->b:[B

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, p1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "cr.CipherFactory"

    const-string v1, "Error in creating cipher instance."

    .line 4
    invoke-static {v0, v1, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 17
    iget-object v0, p0, Lj60;->c:Lg60;

    if-eqz v0, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lj60;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lj60;->b:Ljava/util/concurrent/FutureTask;

    if-nez v1, :cond_1

    .line 20
    new-instance v1, Ljava/util/concurrent/FutureTask;

    .line 21
    new-instance v2, Lf60;

    invoke-direct {v2, p0}, Lf60;-><init>(Lj60;)V

    .line 22
    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lj60;->b:Ljava/util/concurrent/FutureTask;

    .line 23
    sget-object v2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
