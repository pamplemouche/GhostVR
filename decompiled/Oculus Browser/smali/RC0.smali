.class public final LRC0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static b:LRC0;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, LJ/N;->MZa4o8Eq(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, LRC0;->a:J

    return-void
.end method

.method public static a()LRC0;
    .locals 1

    .line 1
    sget-object v0, LRC0;->b:LRC0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, LRC0;

    invoke-direct {v0}, LRC0;-><init>()V

    sput-object v0, LRC0;->b:LRC0;

    .line 3
    :cond_0
    sget-object v0, LRC0;->b:LRC0;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/String;
    .locals 2

    .line 4
    iget-wide v0, p0, LRC0;->a:J

    .line 5
    invoke-static {v0, v1, p0, p1}, LJ/N;->M6rlffHy(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, LRC0;->a:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MMwFZLsG(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
