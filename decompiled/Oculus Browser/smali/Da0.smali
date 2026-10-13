.class public LDa0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LJ/N;->MbmjdWDe()J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, LDa0;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-wide v0, p0, LDa0;->a:J

    .line 2
    invoke-static {v0, v1}, LJ/N;->Mo1Pyu5g(J)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, LDa0;->a:J

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z
    .locals 6

    .line 4
    iget-wide v0, p0, LDa0;->a:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 5
    invoke-static/range {v0 .. v5}, LJ/N;->Mju$gqQ$(JLjava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
