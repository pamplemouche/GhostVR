.class public Lmb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrw;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1}, LJ/N;->Mk2kSJ39(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lmb0;->a:J

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lmb0;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lmb0;->a:J

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->MDzRqKxh(JLjava/lang/Object;I)V

    return-void
.end method
