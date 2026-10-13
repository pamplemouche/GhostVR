.class public Lorg/chromium/chrome/browser/cookies/CanonicalCookie;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->d:Ljava/lang/String;

    .line 6
    iput-wide p5, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->e:J

    .line 7
    iput-wide p7, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->f:J

    .line 8
    iput-wide p9, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->g:J

    .line 9
    iput-boolean p11, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->h:Z

    .line 10
    iput-boolean p12, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->i:Z

    .line 11
    iput p13, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->j:I

    .line 12
    iput p14, p0, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->k:I

    return-void
.end method

.method public static a(Ljava/io/DataOutputStream;[Lorg/chromium/chrome/browser/cookies/CanonicalCookie;)V
    .locals 5

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cookies arg contains null value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    array-length v0, p1

    const v2, 0x1339faa

    .line 4
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1
    if-ge v1, v0, :cond_3

    .line 6
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    const-string v3, ""

    .line 7
    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 8
    iget-object v3, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 9
    iget-object v3, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 10
    iget-object v3, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->c:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 11
    iget-object v3, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->d:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 12
    iget-wide v3, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->e:J

    invoke-virtual {p0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 13
    iget-wide v3, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->f:J

    invoke-virtual {p0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 14
    iget-wide v3, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->g:J

    invoke-virtual {p0, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 15
    iget-boolean v3, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->h:Z

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 16
    iget-boolean v3, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->i:Z

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 17
    iget v3, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->j:I

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 18
    iget v2, v2, Lorg/chromium/chrome/browser/cookies/CanonicalCookie;->k:I

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 19
    throw p0

    :cond_3
    return-void

    .line 20
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cookies arg is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out arg is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
