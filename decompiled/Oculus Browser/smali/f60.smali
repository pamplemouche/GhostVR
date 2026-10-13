.class public Lf60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lj60;


# direct methods
.method public constructor <init>(Lj60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf60;->a:Lj60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8

    const-string v0, "Couldn\'t get generator data."

    const-string v1, "cr.CipherFactory"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Lf60;->a:Lj60;

    .line 2
    iget-object v4, v4, Lj60;->d:Ld60;

    const/16 v5, 0x10

    .line 3
    invoke-virtual {v4, v5}, Ld60;->a(I)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 5
    invoke-static {v5}, LoU;->a(Ljava/security/SecureRandom;)V

    const-string v6, "AES"

    .line 6
    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v6

    const/16 v7, 0x80

    .line 7
    invoke-virtual {v6, v7, v5}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 8
    new-instance v5, Lg60;

    invoke-virtual {v6}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lg60;-><init>(Ljava/security/Key;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v5

    goto :goto_0

    :catch_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "Couldn\'t get generator instances."

    .line 9
    invoke-static {v1, v3, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v2
.end method
