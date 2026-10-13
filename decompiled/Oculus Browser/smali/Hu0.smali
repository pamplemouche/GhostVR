.class public LHu0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public b:Z


# direct methods
.method public constructor <init>(ZLorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1, p2}, LJ/N;->MUPGOxnM(Ljava/lang/Object;ZLjava/lang/Object;)J

    move-result-wide p1

    .line 3
    iput-wide p1, p0, LHu0;->a:J

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 3
    iget-boolean v0, p0, LHu0;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LHu0;->b:Z

    .line 5
    iget-wide v0, p0, LHu0;->a:J

    .line 6
    invoke-static {v0, v1, p0, p1}, LJ/N;->MMkYOH60(JLjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 6

    .line 1
    iget-wide v0, p0, LHu0;->a:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2
    invoke-static/range {v0 .. v5}, LJ/N;->M2ZMNVEU(JLjava/lang/Object;IIZ)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 7
    iget-wide v0, p0, LHu0;->a:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 8
    invoke-static/range {v0 .. v5}, LJ/N;->MFGtTYYQ(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    .line 1
    :cond_0
    iget-wide v0, p0, LHu0;->a:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->M6oiJryG(JLjava/lang/Object;I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LHu0;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LHu0;->b:Z

    .line 3
    iget-wide v0, p0, LHu0;->a:J

    .line 4
    invoke-static {v0, v1, p0, p1}, LJ/N;->M8JUcVwx(JLjava/lang/Object;I)V

    :cond_0
    return-void
.end method
