.class public Lorg/chromium/media/MediaDrmBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final l:Ljava/util/UUID;

.field public static final m:[B

.field public static final n:[B

.field public static final o:LO41;


# instance fields
.field public a:Landroid/media/MediaDrm;

.field public b:Landroid/media/MediaCrypto;

.field public c:J

.field public d:Ljava/util/UUID;

.field public final e:Z

.field public f:LR41;

.field public g:LT41;

.field public h:LU41;

.field public i:Z

.field public j:Z

.field public k:LP41;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->l:Ljava/util/UUID;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 2
    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->m:[B

    const-string v0, "unprovision"

    .line 3
    invoke-static {v0}, LdT;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->n:[B

    .line 4
    new-instance v0, LO41;

    invoke-direct {v0}, LO41;-><init>()V

    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->o:LO41;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;ZJJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->d:Ljava/util/UUID;

    .line 3
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    .line 4
    iput-boolean p2, p0, Lorg/chromium/media/MediaDrmBridge;->e:Z

    .line 5
    iput-wide p3, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 6
    new-instance p1, LU41;

    invoke-direct {p1, p5, p6}, LU41;-><init>(J)V

    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->h:LU41;

    .line 7
    new-instance p2, LT41;

    invoke-direct {p2, p1}, LT41;-><init>(LU41;)V

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/chromium/media/MediaDrmBridge;->i:Z

    .line 9
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    new-instance p2, LI41;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, LI41;-><init>(Lorg/chromium/media/MediaDrmBridge;LD41;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    .line 11
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    new-instance p2, LK41;

    invoke-direct {p2, p0, p3}, LK41;-><init>(Lorg/chromium/media/MediaDrmBridge;LD41;)V

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    .line 12
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    new-instance p2, LM41;

    invoke-direct {p2, p0, p3}, LM41;-><init>(Lorg/chromium/media/MediaDrmBridge;LD41;)V

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string p2, "enable"

    const-string p3, "privacyMode"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string p3, "sessionSharing"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lorg/chromium/media/MediaDrmBridge;[B)LR41;
    .locals 2

    .line 34
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->f:LR41;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "cr_media"

    const-string v0, "Session doesn\'t exist because media crypto session is not created."

    .line 35
    invoke-static {p1, v0, p0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 36
    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    .line 37
    iget-object p0, p0, LT41;->b:Ljava/util/HashMap;

    .line 38
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS41;

    if-nez p0, :cond_1

    move-object p0, v1

    goto :goto_0

    .line 39
    :cond_1
    iget-object p0, p0, LS41;->a:LR41;

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    return-object v1
.end method

.method public static synthetic a(I)Ljava/util/List;
    .locals 4

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Lorg/chromium/media/MediaDrmBridge$KeyStatus;

    sget-object v2, Lorg/chromium/media/MediaDrmBridge;->m:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/chromium/media/MediaDrmBridge$KeyStatus;-><init>([BILD41;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic a(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->e()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/media/MediaDrmBridge;J)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 63
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->MOzXytse(JLjava/lang/Object;J)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/chromium/media/MediaDrmBridge;JLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/media/MediaDrmBridge;LR41;J)V
    .locals 7

    .line 84
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 86
    iget-object v4, p1, LR41;->a:[B

    move-object v3, p0

    move-wide v5, p2

    .line 87
    invoke-static/range {v1 .. v6}, LJ/N;->MFLUFEZc(JLjava/lang/Object;[BJ)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/chromium/media/MediaDrmBridge;LR41;Ljava/lang/Runnable;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->k:LP41;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, v0, LP41;->a:LR41;

    .line 55
    iget-object v0, v0, LR41;->a:[B

    .line 56
    iget-object p1, p1, LR41;->a:[B

    .line 57
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p0, p0, Lorg/chromium/media/MediaDrmBridge;->k:LP41;

    .line 59
    iget-object p0, p0, LP41;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lorg/chromium/media/MediaDrmBridge;LR41;Ljava/lang/String;J)V
    .locals 6

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 44
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "Fail to generate key release request"

    .line 45
    invoke-virtual {p0, p3, p4, p1}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 48
    invoke-static {v0, v1, p0, p3, p4}, LJ/N;->MOzXytse(JLjava/lang/Object;J)V

    .line 49
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;Landroid/media/MediaDrm$KeyRequest;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "cr_media"

    const-string v0, "removeSession called on unprovisioned device"

    .line 50
    invoke-static {p2, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Unknown failure"

    .line 51
    invoke-virtual {p0, p3, p4, p1}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 52
    throw p0
.end method

.method public static synthetic a(Lorg/chromium/media/MediaDrmBridge;LR41;[Ljava/lang/Object;ZZ)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;[Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/media/MediaDrmBridge;J)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    invoke-static {v0}, LR41;->b([B)LR41;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/media/MediaDrmBridge;->a(JLR41;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static synthetic b(Lorg/chromium/media/MediaDrmBridge;LR41;J)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "cr_media"

    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->d()[B

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "Failed to open session to load license."

    .line 7
    invoke-virtual {p0, p2, p3, v0}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :cond_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    .line 9
    invoke-virtual {v4, p1}, LT41;->a(LR41;)LS41;

    move-result-object v5

    .line 10
    iput-object v3, p1, LR41;->b:[B

    .line 11
    iget-object v4, v4, LT41;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    invoke-virtual {v3, p1}, LT41;->a(LR41;)LS41;

    move-result-object v3

    .line 13
    iget v3, v3, LS41;->c:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const-string v3, "Persistent license is waiting for release ack."

    new-array v4, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v1, v3, v4}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, p2, p3, p1}, Lorg/chromium/media/MediaDrmBridge;->a(JLR41;)V

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v4, Lorg/chromium/media/MediaDrmBridge$KeyStatus;

    sget-object v5, Lorg/chromium/media/MediaDrmBridge;->m:[B

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v0}, Lorg/chromium/media/MediaDrmBridge$KeyStatus;-><init>([BILD41;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 19
    invoke-virtual {p0, p1, v0, v2, v6}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;[Ljava/lang/Object;ZZ)V

    goto :goto_0

    .line 20
    :cond_1
    new-instance v3, LP41;

    invoke-direct {v3, p1}, LP41;-><init>(LR41;)V

    iput-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->k:LP41;

    .line 21
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    .line 22
    iget-object v4, p1, LR41;->b:[B

    .line 23
    iget-object v5, p1, LR41;->c:[B

    .line 24
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 25
    invoke-virtual {p0, p2, p3, p1}, Lorg/chromium/media/MediaDrmBridge;->a(JLR41;)V

    .line 26
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->k:LP41;

    invoke-virtual {v3}, LP41;->a()V

    .line 27
    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->k:LP41;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;)V

    .line 29
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    new-instance v1, LF41;

    invoke-direct {v1, p0, p2, p3}, LF41;-><init>(Lorg/chromium/media/MediaDrmBridge;J)V

    invoke-virtual {v0, p1, v1}, LT41;->a(LR41;Lorg/chromium/base/Callback;)V

    goto :goto_0

    :catch_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Persistent license load fail because origin isn\'t provisioned."

    .line 30
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;)V

    .line 32
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    new-instance v1, LF41;

    invoke-direct {v1, p0, p2, p3}, LF41;-><init>(Lorg/chromium/media/MediaDrmBridge;J)V

    invoke-virtual {v0, p1, v1}, LT41;->a(LR41;Lorg/chromium/base/Callback;)V

    :goto_0
    return-void

    .line 33
    :cond_2
    throw v0
.end method

.method public static synthetic b(Lorg/chromium/media/MediaDrmBridge;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->a()Z

    move-result p0

    return p0
.end method

.method public static c([B)Ljava/util/UUID;
    .locals 9

    .line 1
    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    const/16 v6, 0x8

    if-ge v0, v6, :cond_1

    shl-long/2addr v4, v6

    .line 2
    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_1
    if-ge v0, v1, :cond_2

    shl-long/2addr v2, v6

    .line 3
    aget-byte v7, p0, v0

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4
    :cond_2
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method

.method private closeSession([BJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    const-string p1, "closeSession() called when MediaDrm is null."

    .line 2
    invoke-virtual {p0, p2, p3, p1}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->a([B)LR41;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Invalid sessionId in closeSession(): "

    .line 4
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-static {p1}, LR41;->c([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p2, p3, p1}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    return-void

    .line 7
    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    .line 8
    iget-object v1, v0, LR41;->b:[B

    .line 9
    invoke-virtual {p1, v1}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "cr_media"

    const-string v2, "removeKeys failed: "

    .line 10
    invoke-static {p1, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;)V

    .line 12
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    .line 13
    invoke-virtual {p1, v0}, LT41;->a(LR41;)LS41;

    .line 14
    iget-object v1, p1, LT41;->a:Ljava/util/HashMap;

    .line 15
    iget-object v2, v0, LR41;->a:[B

    .line 16
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, v0, LR41;->b:[B

    if-eqz v1, :cond_2

    .line 18
    iget-object p1, p1, LT41;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 21
    invoke-static {v1, v2, p0, p2, p3}, LJ/N;->MOzXytse(JLjava/lang/Object;J)V

    .line 22
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    iget-wide p1, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 24
    iget-object p3, v0, LR41;->a:[B

    .line 25
    invoke-static {p1, p2, p0, p3}, LJ/N;->MulYy5b7(JLjava/lang/Object;[B)V

    .line 26
    :cond_4
    invoke-virtual {v0}, LR41;->a()Ljava/lang/String;

    return-void
.end method

.method public static create([BLjava/lang/String;Ljava/lang/String;ZJJ)Lorg/chromium/media/MediaDrmBridge;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Failed to create MediaDrmBridge"

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/4 v6, 0x1

    aput-object v1, v0, v6

    const-string v7, "cr_media"

    const-string v8, "Create MediaDrmBridge with level %s and origin %s"

    .line 1
    invoke-static {v7, v8, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static/range {p0 .. p0}, Lorg/chromium/media/MediaDrmBridge;->c([B)Ljava/util/UUID;

    move-result-object v10

    const/4 v8, 0x0

    if-eqz v10, :cond_9

    .line 3
    invoke-static {v10}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    :try_start_0
    new-instance v14, Lorg/chromium/media/MediaDrmBridge;

    move-object v9, v14

    move/from16 v11, p3

    move-wide/from16 v12, p4

    move-object/from16 p0, v14

    move-wide/from16 v14, p6

    invoke-direct/range {v9 .. v15}, Lorg/chromium/media/MediaDrmBridge;-><init>(Ljava/util/UUID;ZJJ)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v3, "Failed to set security level %s"

    .line 6
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/media/MediaDrmBridge;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    move-object/from16 v9, p0

    goto :goto_3

    .line 7
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/chromium/media/MediaDrmBridge;->getSecurityLevel()Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    .line 8
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v5

    aput-object v2, v9, v6

    const-string v10, "Security level: current %s, new %s"

    .line 9
    invoke-static {v7, v10, v9}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object/from16 v9, p0

    .line 11
    :try_start_1
    iget-object v0, v9, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string v10, "securityLevel"

    invoke-virtual {v0, v10, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v5

    aput-object v0, v10, v6

    .line 12
    invoke-static {v7, v3, v10}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v2, v10, v5

    aput-object v0, v10, v6

    .line 13
    invoke-static {v7, v3, v10}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v5

    const-string v2, "Security level %s not supported!"

    .line 14
    invoke-static {v7, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    .line 15
    invoke-virtual {v9}, Lorg/chromium/media/MediaDrmBridge;->e()V

    return-object v8

    :cond_4
    move-object/from16 v9, p0

    .line 16
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v2, "Failed to set security origin %s"

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v1, v0, v5

    const-string v3, "Set origin: %s"

    .line 17
    invoke-static {v7, v3, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v9}, Lorg/chromium/media/MediaDrmBridge;->c()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    .line 19
    :cond_6
    :try_start_2
    iget-object v0, v9, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string v3, "origin"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-boolean v6, v9, Lorg/chromium/media/MediaDrmBridge;->j:Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    .line 21
    invoke-static {v7, v2, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_3
    move-exception v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    .line 22
    invoke-static {v7, v2, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v1, v0, v5

    const-string v1, "Security origin %s not supported!"

    .line 23
    invoke-static {v7, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_7

    .line 24
    invoke-virtual {v9}, Lorg/chromium/media/MediaDrmBridge;->e()V

    return-object v8

    :cond_7
    if-eqz p3, :cond_8

    .line 25
    invoke-virtual {v9}, Lorg/chromium/media/MediaDrmBridge;->a()Z

    move-result v0

    if-nez v0, :cond_8

    return-object v8

    :cond_8
    return-object v9

    :catch_4
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v5

    .line 26
    invoke-static {v7, v3, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8

    :catch_5
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v5

    .line 27
    invoke-static {v7, v3, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8

    :catch_6
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "Unsupported DRM scheme"

    .line 28
    invoke-static {v7, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_6
    return-object v8
.end method

.method private createSessionFromNative([BLjava/lang/String;I[Ljava/lang/String;J)V
    .locals 15

    move-object v7, p0

    move/from16 v0, p3

    move-object/from16 v1, p4

    move-wide/from16 v8, p5

    .line 1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x2

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    .line 2
    array-length v3, v1

    rem-int/2addr v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 4
    aget-object v4, v1, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Additional data array doesn\'t have equal keys/values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    iget-object v1, v7, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string v11, "cr_media"

    if-nez v1, :cond_2

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "createSession() called when MediaDrm is null."

    .line 7
    invoke-static {v11, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "MediaDrm released previously."

    .line 8
    invoke-virtual {p0, v8, v9, v0}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->d()[B

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "Open session failed."

    .line 10
    invoke-virtual {p0, v8, v9, v0}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_4

    :cond_3
    if-ne v0, v2, :cond_4

    .line 11
    :try_start_1
    invoke-static {v1}, LR41;->a([B)LR41;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_4
    invoke-static {v1}, LR41;->b([B)LR41;

    move-result-object v1
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v14, v1

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    .line 13
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    if-nez v1, :cond_5

    .line 14
    invoke-virtual {p0, v14}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;)V

    const-string v0, "Generate request failed."

    .line 15
    invoke-virtual {p0, v8, v9, v0}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    goto :goto_4

    .line 16
    :cond_5
    invoke-virtual {v14}, LR41;->a()Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v8, v9, v14}, Lorg/chromium/media/MediaDrmBridge;->a(JLR41;)V

    .line 18
    invoke-virtual {p0, v14, v1}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;Landroid/media/MediaDrm$KeyRequest;)V

    .line 19
    iget-object v1, v7, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    if-eqz v1, :cond_6

    .line 20
    new-instance v2, LS41;

    move-object/from16 v3, p2

    invoke-direct {v2, v14, v3, v0, v12}, LS41;-><init>(LR41;Ljava/lang/String;ILQ41;)V

    .line 21
    iget-object v0, v1, LT41;->a:Ljava/util/HashMap;

    .line 22
    iget-object v3, v14, LR41;->a:[B

    .line 23
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, v14, LR41;->b:[B

    if-eqz v0, :cond_8

    .line 25
    iget-object v1, v1, LT41;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 26
    :cond_6
    throw v12
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object v12, v14

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    :goto_3
    new-array v2, v13, [Ljava/lang/Object;

    aput-object v0, v2, v10

    const-string v0, "Device not provisioned"

    .line 27
    invoke-static {v11, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_7

    .line 28
    invoke-virtual {p0, v12}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;)V

    :cond_7
    const-string v0, "Device not provisioned during createSession()."

    .line 29
    invoke-virtual {p0, v8, v9, v0}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 2
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->e()V

    :cond_0
    return-void
.end method

.method public static getFirstApiLevel()I
    .locals 8

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    .line 1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInt"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 2
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v3, "Exception while getting system property %s. Using default."

    .line 4
    invoke-static {v3, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method private getSecurityLevel()Ljava/lang/String;
    .locals 7

    const-string v0, "Failed to get current security level"

    .line 1
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "cr_media"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string v6, "securityLevel"

    invoke-virtual {v5, v6}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    .line 3
    invoke-static {v4, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catch_1
    move-exception v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    .line 4
    invoke-static {v4, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_1
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "getSecurityLevel(): MediaDrm is null or security level is not supported."

    .line 5
    invoke-static {v4, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public static isCryptoSchemeSupported([BLjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->c([B)Ljava/util/UUID;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private loadSession([BJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    new-instance v1, LE41;

    invoke-direct {v1, p0, p2, p3}, LE41;-><init>(Lorg/chromium/media/MediaDrmBridge;J)V

    .line 2
    iget-object p2, v0, LT41;->c:LU41;

    new-instance p3, LQ41;

    invoke-direct {p3, v0, v1}, LQ41;-><init>(LT41;Lorg/chromium/base/Callback;)V

    .line 3
    invoke-virtual {p2}, LU41;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-wide v0, p2, LU41;->a:J

    .line 5
    invoke-static {v0, v1, p2, p1, p3}, LJ/N;->Mmi_qOX8(JLjava/lang/Object;[BLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-interface {p3, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private processProvisionResponse(Z[B)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->i:Z

    .line 2
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lorg/chromium/media/MediaDrmBridge;->b([B)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-boolean p2, p0, Lorg/chromium/media/MediaDrmBridge;->e:Z

    if-nez p2, :cond_1

    .line 5
    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 6
    invoke-static {v1, v2, p0, p1}, LJ/N;->MAaklmRW(JLjava/lang/Object;Z)V

    if-nez p1, :cond_5

    .line 7
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->e()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->e()V

    goto :goto_1

    .line 9
    :cond_2
    iget-boolean p1, p0, Lorg/chromium/media/MediaDrmBridge;->j:Z

    if-nez p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->a()Z

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->h:LU41;

    new-instance p2, LH41;

    invoke-direct {p2, p0}, LH41;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    .line 12
    invoke-virtual {p1}, LU41;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget-wide v1, p1, LU41;->a:J

    .line 14
    invoke-static {v1, v2, p1, p2}, LJ/N;->ME6vNmlv(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 16
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lorg/chromium/media/MediaDrmBridge;->e:Z

    if-eqz p1, :cond_7

    .line 17
    sget-object p1, Lorg/chromium/media/MediaDrmBridge;->o:LO41;

    .line 18
    iput-boolean v0, p1, LO41;->a:Z

    .line 19
    :cond_6
    iget-object p2, p1, LO41;->b:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 20
    iget-object p2, p1, LO41;->b:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 21
    iget-object v0, p1, LO41;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 22
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 23
    iget-boolean p2, p1, LO41;->a:Z

    if-eqz p2, :cond_6

    :cond_7
    return-void
.end method

.method private provision()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "cr_media"

    const-string v3, "Calling provision() without an origin."

    .line 2
    invoke-static {v2, v3, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 4
    invoke-static {v2, v3, p0, v1}, LJ/N;->MAaklmRW(JLjava/lang/Object;Z)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->d()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0}, LR41;->b([B)LR41;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;)V

    .line 8
    :cond_1
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    const/4 v0, 0x1

    .line 9
    invoke-static {v2, v3, p0, v0}, LJ/N;->MAaklmRW(JLjava/lang/Object;Z)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 12
    invoke-static {v2, v3, p0, v1}, LJ/N;->MAaklmRW(JLjava/lang/Object;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeSession([BJ)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->a([B)LR41;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Session doesn\'t exist"

    .line 2
    invoke-virtual {p0, p2, p3, p1}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    invoke-virtual {v0, p1}, LT41;->a(LR41;)LS41;

    move-result-object v5

    .line 4
    iget v0, v5, LS41;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p1, "Removing temporary session isn\'t implemented"

    .line 5
    invoke-virtual {p0, p2, p3, p1}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    const/4 v7, 0x3

    new-instance v8, LG41;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, LG41;-><init>(Lorg/chromium/media/MediaDrmBridge;JLR41;LS41;)V

    .line 7
    invoke-virtual {v6, p1}, LT41;->a(LR41;)LS41;

    move-result-object p1

    .line 8
    iput v7, p1, LS41;->c:I

    .line 9
    iget-object p2, v6, LT41;->c:LU41;

    .line 10
    new-instance p3, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;

    iget-object v0, p1, LS41;->a:LR41;

    .line 11
    iget-object v1, v0, LR41;->a:[B

    .line 12
    iget-object v0, v0, LR41;->c:[B

    .line 13
    iget-object p1, p1, LS41;->b:Ljava/lang/String;

    invoke-direct {p3, v1, v0, p1, v7}, Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;-><init>([B[BLjava/lang/String;I)V

    .line 14
    invoke-virtual {p2, p3, v8}, LU41;->a(Lorg/chromium/media/MediaDrmStorageBridge$PersistentInfo;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method private setServerCertificate([B)Z
    .locals 6

    const-string v0, "Failed to set server certificate"

    const-string v1, "cr_media"

    .line 1
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    const-string v5, "serviceCertificate"

    invoke-virtual {v4, v5, p1}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 3
    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 4
    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method private unprovision()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->j:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lorg/chromium/media/MediaDrmBridge;->n:[B

    invoke-virtual {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->b([B)Z

    return-void
.end method

.method private updateSession([B[BJ)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-wide/from16 v8, p3

    const-string v10, "failed to provide key response"

    const-string v11, "cr_media"

    .line 1
    iget-object v1, v7, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-nez v1, :cond_0

    const-string v0, "updateSession() called when MediaDrm is null."

    .line 2
    invoke-virtual {v7, v8, v9, v0}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/chromium/media/MediaDrmBridge;->a([B)LR41;

    move-result-object v12

    if-nez v12, :cond_1

    const-string v0, "Invalid session in updateSession: "

    .line 4
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-static/range {p1 .. p1}, LR41;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v7, v8, v9, v0}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    return-void

    .line 7
    :cond_1
    :try_start_0
    iget-object v1, v7, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    invoke-virtual {v1, v12}, LT41;->a(LR41;)LS41;

    move-result-object v14

    .line 8
    iget v1, v14, LS41;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v15, :cond_3

    .line 9
    iget-object v2, v7, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    .line 10
    iget-object v3, v12, LR41;->c:[B

    .line 11
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, v7, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    .line 13
    iget-object v2, v12, LR41;->b:[B

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v1

    :goto_1
    move-object v0, v1

    .line 15
    new-instance v6, LN41;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v12

    move-wide/from16 v4, p3

    move-object v13, v6

    move v6, v15

    invoke-direct/range {v1 .. v6}, LN41;-><init>(Lorg/chromium/media/MediaDrmBridge;LR41;JZ)V

    if-eqz v15, :cond_4

    .line 16
    iget-object v0, v7, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    invoke-virtual {v0, v12, v13}, LT41;->a(LR41;Lorg/chromium/base/Callback;)V

    goto :goto_2

    .line 17
    :cond_4
    iget v1, v14, LS41;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    if-eqz v0, :cond_5

    .line 18
    array-length v1, v0

    if-lez v1, :cond_5

    .line 19
    iget-object v1, v7, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    invoke-virtual {v1, v12, v0, v13}, LT41;->a(LR41;[BLorg/chromium/base/Callback;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    .line 20
    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v13, v0}, LN41;->a(Ljava/lang/Boolean;)V
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/media/DeniedByServerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    const/4 v1, 0x1

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 21
    invoke-static {v11, v10, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :catch_4
    move-exception v0

    const/4 v1, 0x1

    :goto_4
    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 22
    invoke-static {v11, v10, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :catch_5
    move-exception v0

    const/4 v1, 0x1

    :goto_5
    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 23
    invoke-static {v11, v10, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    const-string v0, "Update session failed."

    .line 24
    invoke-virtual {v7, v8, v9, v0}, Lorg/chromium/media/MediaDrmBridge;->a(JLjava/lang/String;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/media/MediaDrmBridge;->e()V

    return-void
.end method


# virtual methods
.method public final a([B)LR41;
    .locals 3

    .line 31
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->f:LR41;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "cr_media"

    const-string v2, "Session doesn\'t exist because media crypto session is not created."

    .line 32
    invoke-static {v0, v2, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    invoke-virtual {v0, p1}, LT41;->a([B)LR41;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method public final a(LR41;[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    .locals 6

    if-nez p5, :cond_0

    .line 25
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v5, p5

    const/4 p5, 0x0

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    .line 26
    :try_start_0
    iget-object p1, p1, LR41;->c:[B

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 27
    :cond_1
    iget-object p1, p1, LR41;->b:[B

    :goto_0
    move-object v1, p1

    .line 28
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 29
    :goto_1
    instance-of p2, p1, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "cr_media"

    const-string p3, "MediaDrmStateException fired during getKeyRequest()."

    .line 30
    invoke-static {p1, p3, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-object p5
.end method

.method public final a(JLR41;)V
    .locals 7

    .line 64
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 66
    iget-object v6, p3, LR41;->a:[B

    move-object v3, p0

    move-wide v4, p1

    .line 67
    invoke-static/range {v1 .. v6}, LJ/N;->MtWWjNjU(JLjava/lang/Object;J[B)V

    :cond_0
    return-void
.end method

.method public final a(JLjava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string v1, "cr_media"

    const-string v2, "onPromiseRejected: %s"

    .line 68
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    .line 71
    invoke-static/range {v1 .. v6}, LJ/N;->M2P7BQ98(JLjava/lang/Object;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(LR41;)V
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    .line 41
    iget-object p1, p1, LR41;->b:[B

    .line 42
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "cr_media"

    const-string v1, "closeSession failed: "

    .line 43
    invoke-static {p1, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(LR41;Landroid/media/MediaDrm$KeyRequest;)V
    .locals 7

    .line 72
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 74
    invoke-virtual {p2}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result v0

    :goto_0
    move v5, v0

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :goto_1
    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 77
    iget-object v4, p1, LR41;->a:[B

    .line 78
    invoke-virtual {p2}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v6

    move-object v3, p0

    .line 79
    invoke-static/range {v1 .. v6}, LJ/N;->Mf7HZHqV(JLjava/lang/Object;[BI[B)V

    return-void
.end method

.method public final a(LR41;[Ljava/lang/Object;ZZ)V
    .locals 8

    .line 80
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 82
    iget-object v4, p1, LR41;->a:[B

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    .line 83
    invoke-static/range {v1 .. v7}, LJ/N;->Mk8V79M2(JLjava/lang/Object;[B[Ljava/lang/Object;ZZ)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 6

    const/4 v0, 0x1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->d()[B

    move-result-object v1
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "cr_media"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Cannot create MediaCrypto Session."

    .line 7
    invoke-static {v2, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 8
    :cond_0
    invoke-static {v1}, LR41;->b([B)LR41;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->f:LR41;

    .line 9
    invoke-virtual {v1}, LR41;->a()Ljava/lang/String;

    .line 10
    :try_start_1
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->d:Ljava/util/UUID;

    invoke-static {v1}, Landroid/media/MediaCrypto;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    new-instance v1, Landroid/media/MediaCrypto;

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->d:Ljava/util/UUID;

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->f:LR41;

    .line 12
    iget-object v5, v5, LR41;->b:[B

    .line 13
    invoke-direct {v1, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->b:Landroid/media/MediaCrypto;

    .line 14
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    iget-wide v4, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 16
    invoke-static {v4, v5, p0, v1}, LJ/N;->MV9yuwVC(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    const-string v1, "Cannot create MediaCrypto for unsupported scheme."

    new-array v4, v3, [Ljava/lang/Object;

    .line 17
    invoke-static {v2, v1, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/media/MediaCryptoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const-string v1, "Cannot create MediaCrypto"

    .line 18
    invoke-static {v2, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->e()V

    return v3

    .line 20
    :catch_1
    sget-object v1, Lorg/chromium/media/MediaDrmBridge;->o:LO41;

    .line 21
    iget-boolean v2, v1, LO41;->a:Z

    if-nez v2, :cond_3

    .line 22
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->f()Z

    move-result v0

    return v0

    .line 23
    :cond_3
    new-instance v2, LD41;

    invoke-direct {v2, p0}, LD41;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    .line 24
    iget-object v1, v1, LO41;->b:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public final b()Z
    .locals 5

    .line 5
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b([B)Z
    .locals 5

    const-string v0, "failed to provide provision response"

    const-string v1, "cr_media"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 34
    array-length v3, p1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 35
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v4, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 36
    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 37
    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2

    :cond_1
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Invalid provision response."

    .line 38
    invoke-static {v1, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public final c()Z
    .locals 2

    .line 5
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->d:Ljava/util/UUID;

    sget-object v1, Lorg/chromium/media/MediaDrmBridge;->l:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()[B
    .locals 6

    const-string v0, "Cannot open a new session"

    const-string v1, "cr_media"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    :try_start_0
    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v5}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v5

    .line 2
    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 3
    invoke-static {v1, v0, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->e()V

    return-object v2

    :catch_1
    move-exception v0

    .line 5
    throw v0

    :catch_2
    move-exception v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    .line 6
    invoke-static {v1, v0, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->e()V

    return-object v2
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, v0, LT41;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LS41;

    .line 4
    iget-object v3, v3, LS41;->a:LR41;

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR41;

    .line 7
    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    .line 8
    iget-object v4, v2, LR41;->b:[B

    .line 9
    invoke-virtual {v3, v4}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "cr_media"

    const-string v5, "removeKeys failed: "

    .line 10
    invoke-static {v3, v5, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :goto_2
    invoke-virtual {p0, v2}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;)V

    .line 12
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    iget-wide v3, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 14
    iget-object v2, v2, LR41;->a:[B

    .line 15
    invoke-static {v3, v4, p0, v2}, LJ/N;->MulYy5b7(JLjava/lang/Object;[B)V

    goto :goto_1

    .line 16
    :cond_2
    new-instance v0, LT41;

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->h:LU41;

    invoke-direct {v0, v2}, LT41;-><init>(LU41;)V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->g:LT41;

    .line 17
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->f:LR41;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->a(LR41;)V

    .line 19
    iput-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->f:LR41;

    .line 20
    :cond_3
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 22
    iput-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    .line 23
    :cond_4
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->b:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 25
    iput-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->b:Landroid/media/MediaCrypto;

    goto :goto_3

    .line 26
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 28
    invoke-static {v2, v3, p0, v1}, LJ/N;->MV9yuwVC(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void

    .line 29
    :cond_7
    throw v1
.end method

.method public final f()Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->i:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/media/MediaDrmBridge;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->e:Z

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lorg/chromium/media/MediaDrmBridge;->o:LO41;

    .line 5
    iput-boolean v0, v1, LO41;->a:Z

    .line 6
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->a:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->c:J

    .line 8
    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v1

    .line 9
    invoke-static {v2, v3, p0, v4, v1}, LJ/N;->MmhSkOYV(JLjava/lang/Object;Ljava/lang/String;[B)V

    return v0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const-string v1, "cr_media"

    const-string v3, "Failed to get provisioning request"

    .line 10
    invoke-static {v1, v3, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
