.class public Lorg/chromium/chrome/browser/profiles/ProfileKey;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a:J

    .line 3
    iget-wide p1, p0, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a:J

    .line 4
    invoke-static {p1, p2, p0}, LJ/N;->MdejbNQu(JLjava/lang/Object;)Z

    return-void
.end method

.method public static a()Lorg/chromium/chrome/browser/profiles/ProfileKey;
    .locals 1

    .line 1
    invoke-static {}, LJ/N;->M3mIrj7h()Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lorg/chromium/chrome/browser/profiles/ProfileKey;

    return-object v0
.end method

.method public static create(J)Lorg/chromium/chrome/browser/profiles/ProfileKey;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/profiles/ProfileKey;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/profiles/ProfileKey;-><init>(J)V

    return-object v0
.end method

.method private getNativePointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a:J

    return-wide v0
.end method

.method private onNativeDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/profiles/ProfileKey;->a:J

    return-void
.end method
